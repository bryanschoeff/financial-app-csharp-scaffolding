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
    #table = ScaffoldingObject.new
    #table.database = "OnlineFinancialFilings"
    #table.name = File.basename(file).gsub '.csv', ''
    #table.entity_type = "County"
    #table.filing_type = "GAAP"

    load_spec file, tables
    tables.each do |table|
      File.open("#{OutputPath}#{table.name}.cs", 'w') {|f| f.write(table.print_csharp_class) }
      File.open("#{OutputPath}#{table.name}.sql", 'w') {|f| f.write(table.print_sql_script) }
    end
  end
end

def load_spec file, tables

  table = nil
  current_line = ''
  file_parts = File.basename(file).gsub('.csv', '').split(' - ')

  CSV.foreach(file) do |line|
    if (line[0] != current_line)
      tables << table unless table.nil?

      table = ScaffoldingObject.new
      table.database = "OnlineFinancialStatements"
      table.entity_type = file_parts[0]
      table.filing_type = file_parts[1]
      table.name = "#{line[0]}_#{line[1]}_#{line[2]}".gsub(' ', '')

      current_line = line[0]
    end

    field = ScaffoldingField.new
    field.name = line[6]
    field.name = "#{line[5]}_#{field.name}" if line[5]
    field.name = "#{line[4]}_#{field.name}" if line[4]
    #print "line4: #{line[4]} | #{line[4] == ''}"
    field.name = "#{line[3]}_#{field.name}" if line[3]
    field.db_type = 'decimal(19,4)'
    
    table.add_field field

  end
end

load_specs
