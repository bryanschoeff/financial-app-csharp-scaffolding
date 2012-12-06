require 'FileUtils'
require 'CSV'
require 'ERB'
require_relative 'EntityFiling.rb'

ApplicationName = "Skellington"
DatabaseName = "BryanSandbox"

ApplicationPath = "#{Dir.pwd}/"
SourcePath = "#{ApplicationPath}source/"
OutputPath = "#{ApplicationPath}output/"

filings = Array.new

def load_specs filings
  files = Dir.glob("#{SourcePath}*.csv")
  files.each do |file|
    next if File.directory? file
	
	file_parts = File.basename(file).gsub('.csv', '').split(' - ')
	
	filing = EntityFiling.new
	filing.entity_type = file_parts[0]
	filing.filing_type = file_parts[1]
	
    load_spec file, filing
	filings << filing
  end
end

def load_spec file, filing

  table = nil
  current_line = ''
  file_parts = File.basename(file).gsub('.csv', '').split(' - ')

  CSV.foreach(file, {:headers => :first_row}) do |line|
    if ("#{line[0]}_#{line[1]}_#{line[2]}" != current_line)
      filing.tables << table unless table.nil?

      table = ScaffoldingObject.new
      table.database = DatabaseName
      table.entity_type = filing.entity_type
      table.filing_type = filing.filing_type
      table.description1 = line[0]
	  table.description2 = line[1]
	  table.description3 = line[2]

      current_line = "#{line[0]}_#{line[1]}_#{line[2]}"
	  
	  joinfield = ScaffoldingField.new
	  joinfield.field = "FilingID"
	  joinfield.db_type = "int"
	  
	  table.add_field joinfield
    end

    field = ScaffoldingField.new
	field.category = line[3]
	field.sub_category = line[4]
	field.tertiary_category = line[5]
	field.field = line[6]
    field.db_type = 'decimal(19,4)'
    
    table.add_field field
	
  end
  
  filing.tables << table unless table.nil?
  
end

def print_outputs filings
  sql = ""
	
  filings.each do |filing|
	webform = ""
	mvcform = ""
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
	
	# main model
	File.open("#{model_path}Filing.cs", 'w') {|f| f.write(filing.print_csharp_main_class) }
	# views
	FileUtils.mkpath(view_path) if !(File.exists?(view_path) && File.directory?(view_path))
	File.open("#{view_path}Edit.cshtml", 'w') {|f| f.write(filing.print_mvcform) }
	
	# webforms  
	File.open("#{OutputPath}#{prefix}WebFormFields.aspx", 'w') {|f| f.write(webform) }
	
  end
  
  # sql
  File.open("#{OutputPath}SQLScript.sql", 'w') {|f| f.write(sql) }
  
end

load_specs filings
print_outputs filings
