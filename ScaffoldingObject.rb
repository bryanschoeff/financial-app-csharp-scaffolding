require 'ScaffoldingField'

class ScaffoldingObject
  attr_accessor :name, :entity_type, :filing_type, :fields

  def initialize
    @fields = Array.new
    
    @template_erb_class = File.open('templates/Class.cs.erb') { |f| f.read }
  end

  def add_field field
    @fields << field
  end

  def get_binding
    binding
  end

  def print_csharp_class
    template = ERB.new @template_erb_class
    template.result(get_binding)
  end

  def print_sql_sp_name_load
    "#{@entity_type}_#{@filing_type}_#{@name}GetByID"
  end

  def print_sql_sp_name_update
    "#{@entity_type}_#{@filing_type}_#{@name}Update"
  end

  def print_sql_sp_name_save
    "#{@entity_type}_#{@filing_type}_#{@name}Add"
  end
 
  def print_sql_sp_name_delete
    "#{@entity_type}_#{@filing_type}_#{@name}Delete"
  end


  def print_sql_parameters
  end

  def print_sql_columns
  end

  def print_sql_column_assignments
  end

end
