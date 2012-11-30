require_relative 'ScaffoldingField'

class ScaffoldingObject
  attr_accessor :name, :database, :entity_type, :filing_type, :fields

  def initialize
    @fields = Array.new
    
    @template_erb_class = File.open('templates/Class.cs.erb') { |f| f.read }
    @template_erb_sql = File.open('templates/SQL.sql.erb') { |f| f.read }
    @template_erb_webform = File.open('templates/WebForm.aspx.erb') { |f| f.read }
    @template_erb_mvcform = File.open('templates/View.html.cs.erb') { |f| f.read }
  end

  def add_field field
    @fields << field
  end

  def get_binding
    binding
  end

  def print_sql_script
    template = ERB.new @template_erb_sql
    template.result(get_binding)
  end

  def print_csharp_class
    template = ERB.new @template_erb_class
    template.result(get_binding)
  end

  def print_webform_fields
    template = ERB.new @template_erb_webform
    template.result(get_binding)
  end

  def print_mvcform_fields
    template = ERB.new @template_erb_mvcform
    template.result(get_binding)
  end

 def print_sql_table_name
    "#{@entity_type}_#{@filing_type}_#{@name}"
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

end
