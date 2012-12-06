require_relative 'ScaffoldingObject'

class EntityFiling
  attr_accessor :entity_type, :filing_type, :tables

  def initialize
    @tables = Array.new
    @template_erb_main_class = File.open('templates/TopLevelClass.cs.erb') { |f| f.read }
	@template_erb_mvcform = File.open('templates/View.html.cs.erb') { |f| f.read }
  end
  
  def get_binding
    binding
  end

  def print_mvcform
    template = ERB.new @template_erb_mvcform
    template.result(get_binding)
  end
  
  def print_csharp_main_class
    template = ERB.new @template_erb_main_class
    template.result(get_binding)
  end
end
