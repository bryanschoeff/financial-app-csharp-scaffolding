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

    table = ScaffoldingObject.new
    table.name = File.basename(file).gsub '.csv', ''
    table.entity_type = "County"
    table.filing_type = "GAAP"

    load_spec file, table
    File.open("#{OutputPath}#{table.name}.cs", 'w') {|f| f.write(table.print_csharp_class) }
  end
end

def load_spec file, table
  CSV.foreach(file) do |line|
    field = ScaffoldingField.new
    field.name = line[1]
    field.db_type = line[2]
    
    table.add_field field
  end
end

load_specs
