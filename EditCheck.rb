class EditCheck
  attr_accessor :description1, :description2, :description3, :left, :right

  def initialize
    @left = []
    @right = []
  end

  def name
    "#{acronymize description1}#{'_' if description2}#{cap description2}#{'_' if description3}#{cap description3}".gsub(' ', '')
  end

  def cap words
    words.split(" ").map { |word| word.capitalize }.join(" ") if (words)
  end

  def acronymize words
    words.split(" ").map { |word| word.capitalize.chars.first }.join("") if (words)
  end

end
