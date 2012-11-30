require 'CSV'
require 'EntityFiling'
require 'ERB'

ApplicationPath = "#{Dir.pwd}/"
SourcePath = "#{ApplicationPath}source/"
OutputPath = "#{ApplicationPath}output/"

def load_specs
  filing = EntityFiling.new
  files = Dir.glob("#{SourcePath}*.csv")

  files.each do |file|
    next if File.directory? file
    tables = Array.new
    webform = ""
    mvcform = ""

    load_spec file, tables
    tables.each do |table|
      File.open("#{OutputPath}#{table.entity_type}_#{table.filing_type}_#{table.name}.cs", 'w') {|f| f.write(table.print_csharp_class) }
      File.open("#{OutputPath}#{table.entity_type}_#{table.filing_type}_#{table.name}.sql", 'w') {|f| f.write(table.print_sql_script) }
      webform += table.print_webform_fields
      mvcform += table.print_mvcform_fields
    end

    File.open("#{OutputPath}WebFormFields.aspx", 'w') {|f| f.write(webform) }
    File.open("#{OutputPath}View.html.cs", 'w') {|f| f.write(mvcform) }
  end
end

def load_spec file, tables

  table = nil
  current_line = ''
  file_parts = File.basename(file).gsub('.csv', '').split(' - ')

  CSV.foreach(file) do |line|
    if ("#{cap line[0]}_#{cap line[1]}_#{cap line[2]}" != current_line)
      tables << table unless table.nil?

      table = ScaffoldingObject.new
      table.database = "OnlineFinancialStatements"
      table.entity_type = file_parts[0]
      table.filing_type = file_parts[1]
      table.name = "#{cap line[0]}#{'_' if line[1]}#{cap line[1]}#{'_' if line[2]}#{cap line[2]}".gsub(' ', '')

      current_line = "#{cap line[0]}_#{cap line[1]}_#{cap line[2]}"
    end

    field = ScaffoldingField.new
    field.name = cap line[6]
    field.name = "#{cap line[5]}_#{field.name}" if line[5]
    field.name = "#{cap line[4]}_#{field.name}" if line[4]
    #print "line4: #{line[4]} | #{line[4] == ''}"
    field.name = "#{cap line[3]}_#{field.name}" if line[3]
    field.db_type = 'decimal(19,4)'
    
    table.add_field field

  end
end

def cap words
  words.split(" ").map {|words| words.capitalize}.join(" ") if (words)
end
load_specs
