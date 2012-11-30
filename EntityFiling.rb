require_relative 'ScaffoldingObject'

class EntityFiling
  attr_accessor :entity_type, :filing_type, :sheets

  def initialize
    @sheets = Array.new
    @template_erb_class = File.open('templates/Class.cs.erb') { |f| f.read }
  end

  def add_sheet sheet
    @sheets << sheet
  end

end
