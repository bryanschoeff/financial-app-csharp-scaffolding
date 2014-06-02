require_relative 'FieldFormatable.rb'

class ScaffoldingField
  attr_accessor :calculation_group, :calculation_table, :category, :sub_category, :tertiary_category, :field, :display_type, :db_type, :calculated, :calculation_sign, :test_value, :helps
  
  include FieldFormatable
  
  def initialize
	@calculation_sign = "+"
	@test_value = 0
	@helps = []
  end
  
  def subtraction?
	@calculation_sign == "-"
  end

end
