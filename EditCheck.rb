class EditCheck
  attr_accessor :description1, :description2, :description3, :left, :right

  def initialize
    @left = []
    @right = []
  end

  def error_message
    "#{half_error_message @left} should be equal to #{half_error_message @right}"
  end

  def half_error_message side
    result = ""
    side.each do |item|
      result += "#{" #{item.math_sign} " unless item == side.first}#{clean_english(cap("#{item.description1} #{item.description2} #{item.description3}")) + " " unless (item.description1 == @description1) && (item.description2 == @description2) && (item.description3 == @description3)}#{item.display_name}"
    end
    result
  end

  def name
    "#{acronymize description1}#{'_' if description2}#{cap description2}#{'_' if description3}#{cap description3}".gsub(' ', '')
  end

  def clean_english words
    words.gsub(' Of ', ' of ').gsub(' And ', ' and ').gsub(' In ', ' in ').gsub(' From ', ' from ').gsub(' To ', ' to ').gsub(' For ', ' for ')
  end

  def cap words
    words.split(" ").map { |word| word.capitalize }.join(" ") if (words)
  end

  def acronymize words
    words.split(" ").map { |word| word.capitalize.chars.first }.join("") if (words)
  end

end
