require_relative 'FieldFormatable'

class CheckField
  attr_accessor :description1, :description2, :description3, :category, :sub_category, :tertiary_category, :field, :calculated, :db_type

  include FieldFormatable

  def initialize
    @subtraction = false
  end

end
