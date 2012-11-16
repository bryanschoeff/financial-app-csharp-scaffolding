require 'ScaffoldingObject'

class EntityFiling
  attr_accessor :entity_type, :filing_type, :sheets

  def initialize
    @sheets = Array.new
  end

  def add_sheet sheet
    @sheets << sheet
  end



end
