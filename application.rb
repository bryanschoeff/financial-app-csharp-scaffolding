require 'fileutils'
require 'csv'
require 'erb'
require_relative 'EntityFiling.rb'
require_relative 'EditCheck.rb'
require_relative 'EditChecks.rb'
require_relative 'CheckField.rb'


RunDate = Time.new.strftime("%Y.%m.%d")
ApplicationName = "Online_Financial_Statements"
DatabaseName = "OnlineFinancialStatements"

ApplicationPath = "#{Dir.pwd}/"
SourcePath = "#{ApplicationPath}source/"
ChecksSourcePath = "#{ApplicationPath}source/checks/"
OutputPath = "#{ApplicationPath}output/"

filings = []
checks_list = []

def run_script filings, checks_list
  load_specs filings
  load_check_lists checks_list

  print_outputs filings
  print_checks_scripts checks_list
end

def load_specs filings
  files = Dir.glob("#{SourcePath}*.csv")
  files.each do |file|
    next if File.directory? file

    file_parts = File.basename(file).gsub('.csv', '').split(' - ')

    filing = EntityFiling.new
    filing.entity_type = file_parts[0]
    filing.filing_type = file_parts[1]

    load_filing file, filing
    filings << filing
  end
end

def load_check_lists checks_list
  files = Dir.glob("#{ChecksSourcePath}*.csv")
  files.each do |file|
    next if File.directory? file

    file_parts = File.basename(file).gsub('.csv', '').split(' - ')

    checks = EditChecks.new
    checks = load_checks file

    checks.entity_type = file_parts[0]
    checks.filing_type = file_parts[1]

    checks_list << checks
  end
end

def load_filing file, filing

  table = nil
  current_line = ''
  # file_parts = File.basename(file).gsub('.csv', '').split(' - ')

  CSV.foreach(file, {:headers => :first_row}) do |line|
    if ("#{line["Page Description 1"]}_#{line["Page Description 2"]}_#{line["Column Description"]}" != current_line)
      filing.tables << table unless table.nil?

      table = initialize_table filing, line
      current_line = "#{line["Page Description 1"]}_#{line["Page Description 2"]}_#{line["Column Description"]}" 
    end

    field = initialize_field line
    field.calculation_table = table.name

    field.calculation_group = "#{table.name}_#{cap(line["Sum Group"]).gsub(/[\s,()]/, '')}" if line["Sum Group"]
    filing.add_calculation "#{table.name}_#{cap(line["Sum Group"]).gsub(/[\s,()]/, '')}", field if line["Sum Group"]
    table.add_calculation "#{table.name}_#{cap(line["Sum Group"]).gsub(/[\s,()]/, '')}", field if line["Sum Group"]
    if (field.calculated)
      table.add_calculated field
    else
      table.add_field field
    end

    print "#{file} #{line}" if !(field.field)

  end

  filing.tables << table unless table.nil?
end

def load_checks file

  checks = EditChecks.new
  check = EditCheck.new

  previous_sign = ""
  current_side = "Left"

  CSV.foreach(file, {:headers => :first_row}) do |line|

    check_line = load_check_line line, previous_sign
    sign = line[11]

    if current_side == "Left"
      check.description1 = line["Page Description 1"]
      check.description2 = line["Page Description 2"]
      check.description3 = line["Column Description"]
      check.left << check_line

      current_side = "Right" if sign == "Equal"
    elsif sign == "End"
      check.right << check_line
      checks.add check
      check = EditCheck.new

      current_side = "Left"
    else
      check.right << check_line
    end
    previous_sign = sign
  end
  checks
end

def load_check_line line, sign
  check_line = CheckField.new

  check_line.description1 = line["Category"]
  check_line.description2 = line["Subcategory"]
  check_line.description3 = line["Tertiary Category"]

  check_line.field = line["Sign"]
  check_line.calculated = (line[10])
  check_line.field = line[10] if check_line.calculated
  check_line.sign = sign
  check_line.db_type = 'int'

  check_line.category = check_line.calculated ? nil : line["Field"]
  check_line.sub_category = check_line.calculated ? nil : line["Calculated"]
  check_line.tertiary_category = check_line.calculated ? nil : line["Sum Group"]

  check_line
end

def initialize_field line
  field = ScaffoldingField.new
  field.category = line["Category"]
  field.sub_category = line["Subcategory"]
  field.tertiary_category = line["Tertiary Category"]
  field.field = line["Field"]
  field.calculated = (line["Calculated"])
  field.field = line["Calculated"] if field.calculated
  field.calculation_sign = "-" if line["Sign"] == "-"
  field.db_type = 'int'
  field
end

def initialize_table filing, line
  table = ScaffoldingObject.new

  table.database = DatabaseName
  table.entity_type = filing.entity_type
  table.filing_type = filing.filing_type
  table.description1 = line["Page Description 1"]
  table.description2 = line["Page Description 2"]
  table.description3 = line["Column Description"]

  joinfield = ScaffoldingField.new
  joinfield.field = "Filing I D"
  joinfield.db_type = "int"

  table.add_field joinfield
  table
end

def print_outputs filings
  sql = ""

  filings.each do |filing|
    webform = ""
    model_path = "#{OutputPath}models/#{filing.entity_type}/#{filing.filing_type}/"
    FileUtils.mkpath(model_path) if !(File.exists?(model_path) && File.directory?(model_path))

    filing.tables.each do |table|      
      # models
      File.open("#{model_path}#{table.name}.cs", 'w') {|f| f.write(table.print_csharp_class) }

      # views, webforms, sql
      sql += table.print_sql_script
      webform += table.print_webform_fields
      #mvcform += table.print_mvcform_fields
    end
    prefix = "#{filing.entity_type}#{filing.filing_type}"
    view_path = "#{OutputPath}views/#{prefix}/"
    readonly_view_path = "#{OutputPath}readonlyviews/#{prefix}/"
    scripts_path = "#{OutputPath}scripts/"

    # main model
    File.open("#{model_path}Filing.cs", 'w') {|f| f.write(filing.print_csharp_main_class) }
    # views
    FileUtils.mkpath(view_path) if !(File.exists?(view_path) && File.directory?(view_path))
    File.open("#{view_path}Edit.cshtml", 'w') {|f| f.write(filing.print_mvcform) }
    FileUtils.mkpath(readonly_view_path) if !(File.exists?(readonly_view_path) && File.directory?(readonly_view_path))
    File.open("#{readonly_view_path}Details.cshtml", 'w') {|f| f.write(filing.print_mvcform_readonly) }

    # webforms  
    File.open("#{OutputPath}#{prefix}WebFormFields.aspx", 'w') {|f| f.write(webform) }

    # javascript
    FileUtils.mkpath(scripts_path) if !(File.exists?(scripts_path) && File.directory?(scripts_path))
    File.open("#{scripts_path}#{prefix}Scripts.js", 'w') {|f| f.write(filing.print_javascript) }

  end

  # sql
  File.open("#{OutputPath}SQLScript.sql", 'w') {|f| f.write(sql) }

end

def print_checks_scripts checks

  checks.each do |check|
    prefix = "#{check.entity_type}#{check.filing_type}"
    scripts_path = "#{OutputPath}scripts/"

    File.open("#{scripts_path}#{prefix}Scripts-Checks.js", 'w') {|f| f.write(check.print_javascript) }
  end
end

def cap words
  words = words.split(" ").map {|word| word.capitalize}.join(" ") if (words) 
  words.gsub!(/\((\w*?)(\)|\s)/) {|match| "(#{$1.capitalize}#{$2}" } 
  words
end

run_script filings, checks_list
