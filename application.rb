require 'CSV'
require 'ScaffoldingObject'

def load_specs
  Dir.chdir('source')
  files = Dir.glob('*.csv')
  files.each do |file|
    table = ScaffoldingObject.new
    table.name = file
    
    load_spec file, table
    p table
  end
end

def load_spec file, table
  puts file
  CSV.foreach(Dir.pwd + '/' + file) do |line|
    field = ScaffoldingField.new
    field.name = line
    table.add_field field
  end
end


load_specs
