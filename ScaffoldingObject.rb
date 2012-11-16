require 'ScaffoldingField'

class ScaffoldingObject
  attr_accessor :name, :fields

  def initialize
    @fields = Array.new
  end

  def add_field field
    @fields << field
  end

  def print_csharp_class
  end

  def print_sql_parameters
  end

  def print_sql_columns
  end

  def print_sql_column_assignments
  end

end
