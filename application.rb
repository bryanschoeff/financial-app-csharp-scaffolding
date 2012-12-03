require 'FileUtils'
require 'CSV'
require_relative 'EntityFiling.rb'
require 'ERB'

ApplicationPath = "#{Dir.pwd}/"
SourcePath = "#{ApplicationPath}source/"
OutputPath = "#{ApplicationPath}output/"

def load_specs
  filing = EntityFiling.new
  files = Dir.glob("#{SourcePath}*.csv")

  sql = ""
  
  files.each do |file|
    next if File.directory? file
	tables = Array.new    
	
    webform = ""
    mvcform = ""
	file_parts = File.basename(file).gsub('.csv', '').split(' - ')
	
    load_spec file, tables
    tables.each do |table|
	  model_path = "#{OutputPath}models/#{table.entity_type}/#{table.filing_type}/"
	  FileUtils.mkpath(model_path) if !(File.exists?(model_path) && File.directory?(model_path))
	  
      File.open("#{model_path}#{table.name}.cs", 'w') {|f| f.write(table.print_csharp_class) }
      sql += table.print_sql_script
      webform += table.print_webform_fields
      mvcform += table.print_mvcform_fields
    end
	prefix = "#{file_parts[0]}#{file_parts[1]}"
	
    File.open("#{OutputPath}#{prefix}WebFormFields.aspx", 'w') {|f| f.write(webform) }
    File.open("#{OutputPath}#{prefix}View.html.cs", 'w') {|f| f.write(mvcform) }
  end
  
  File.open("#{OutputPath}SQLScript.sql", 'w') {|f| f.write(sql) }
end

def load_spec file, tables

  table = nil
  current_line = ''
  file_parts = File.basename(file).gsub('.csv', '').split(' - ')

  CSV.foreach(file, {:headers => :first_row}) do |line|
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
    field.name = "#{cap line[3]}_#{field.name}" if line[3]
    field.db_type = 'decimal(19,4)'
    
    table.add_field field

  end
  
  tables << table unless table.nil?
  
end

def cap words
  words.split(" ").map {|words| words.capitalize}.join(" ") if (words)
end
load_specs
