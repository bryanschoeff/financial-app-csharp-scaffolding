require_relative 'ScaffoldingObject'

class EntityFiling
  attr_accessor :entity_type, :filing_type, :tables, :calculations

  def initialize
    @tables = Array.new
    @calculations = Hash.new
    @template_erb_main_class = File.open('templates/TopLevelClass.cs.erb') { |f| f.read }
	@template_erb_data_class = File.open('templates/Db.cs.erb') { |f| f.read }
	@template_erb_api_class = File.open('templates/Api.cs.erb') { |f| f.read }
    @template_erb_mvcform = File.open('templates/View.html.cs.erb') { |f| f.read }
	@template_erb_mvcform_readonly = File.open('templates/ReadOnlyView.cshtml.erb') { |f| f.read }
    @template_erb_javascript = File.open('templates/Javascript.js.erb') { |f| f.read }
	@template_erb_unit_test = File.open('templates/UnitTests.cs.erb') { |f| f.read }

  end

  def get_binding
    binding
  end

  def add_calculation calculation, field
    @calculations[calculation] = Array.new unless @calculations[calculation]
    @calculations[calculation] << field
  end

  def print_mvcform
    template = ERB.new @template_erb_mvcform
    template.result(get_binding)
  end
  
  def print_mvcform_readonly
    template = ERB.new @template_erb_mvcform_readonly
    template.result(get_binding)
  end

  def print_csharp_main_class
    template = ERB.new @template_erb_main_class
    template.result(get_binding)
  end
  
  def print_csharp_data_class
    template = ERB.new @template_erb_data_class
    template.result(get_binding)
  end
  
  def print_csharp_api_class
    template = ERB.new @template_erb_api_class
    template.result(get_binding)
  end

  def print_javascript
    template = ERB.new @template_erb_javascript
    template.result(get_binding)
  end
  
  def print_unit_tests
    template = ERB.new @template_erb_unit_test
    template.result(get_binding)
  end
end
