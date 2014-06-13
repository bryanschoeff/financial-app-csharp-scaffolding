require_relative 'ScaffoldingField'

class ScaffoldingObject
  attr_accessor :database, :entity_type, :filing_type, :description1, :description2, :description3, :fields, :fields_all, :calculations

  def initialize
    @fields = Array.new
    @fields_all = Array.new
    @calculations = Hash.new

    @template_erb_class = File.open('templates/Class.cs.erb') { |f| f.read }
    @template_erb_sql = File.open('templates/SQL.sql.erb') { |f| f.read }
	@template_erb_sql_down = File.open('templates/SQL-Down.sql.erb') { |f| f.read }
	@template_erb_sql_delete = File.open('templates/SQL-Delete.sql.erb') { |f| f.read }
    @template_erb_webform = File.open('templates/WebForm.aspx.erb') { |f| f.read }
  end

  def add_field field
    @fields << field
    @fields_all << field
  end

  def add_calculated field
    @fields_all << field
  end

  def add_calculation calculation, field
    @calculations[calculation] = Array.new unless @calculations[calculation]
    @calculations[calculation] << field
  end

  def get_binding
    binding
  end

  def not_applicableable?
    ((name.downcase.include? "water") || (name.downcase.include? "sewer") || (name.downcase.include? "electric") || (name.downcase.include? "landfill"))
  end

  def name
    "#{acronymize description1}#{'_' if description2}#{cap description2}#{'_' if description3}#{cap description3}".gsub(' ', '')
  end

  def display_name
    "#{cap description1}#{' - ' if description2}#{cap description2}#{' - ' if description3}#{cap description3}"
  end

  def print_sql_script
    template = ERB.new @template_erb_sql
    template.result(get_binding)
  end
  
  def print_sql_down_script
    template = ERB.new @template_erb_sql_down
    template.result(get_binding)
  end
  
  def print_sql_delete_script
    template = ERB.new @template_erb_sql_delete
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

  def print_sql_table_name
    "#{@entity_type}_#{@filing_type}_#{name}"
  end

  def print_sql_sp_name_load
    "#{@entity_type}_#{@filing_type}_#{name}GetByID"
  end

  def print_sql_sp_name_load_by_filingid
    "#{@entity_type}_#{@filing_type}_#{name}GetByFilingID"
  end

  def print_sql_sp_name_update
    "#{@entity_type}_#{@filing_type}_#{name}Update"
  end

  def print_sql_sp_name_save
    "#{@entity_type}_#{@filing_type}_#{name}Add"
  end

  def print_sql_sp_name_delete
    "#{@entity_type}_#{@filing_type}_#{name}Delete"
  end

  def cap words
    words.split(" ").map {|words| words.capitalize}.join(" ") if (words)
  end

  def acronymize words
    words.split(" ").map {|words| words.capitalize.chars.first}.join("") if (words)
  end

end
