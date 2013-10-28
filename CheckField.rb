require_relative 'FieldFormatable'

class CheckField
  attr_accessor :description1, :description2, :description3, :category, :sub_category, :tertiary_category, :field, :calculated, :db_type, :sign

  include FieldFormatable

  def initialize
    @subtraction = false
    @description1 = ""
    @description2 = ""
    @description3 = ""
  end

  def check_name
    "#{page_name}_#{csharp_name}"
  end

  def page_name
    "#{acronymize description1}#{'_' if description2}#{cap description2 if description2}#{'_' if description3}#{cap description3 if description3}".gsub(' ', '')
  end

  def acronymize words
    words.split(" ").map { |word| word.capitalize.chars.first }.join("") if (words)
  end


  def math_sign
    if (sign == "Plus")
      "+"
    elsif (sign == "Minus")
      "-"
    else
      ""
    end
  end

end
