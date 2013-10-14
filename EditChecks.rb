class EditChecks
  attr_accessor :entity_type, :filing_type, :checks

  def initialize
    @checks = []
    @template_erb_script = File.open('templates/Javascript-Checks.js.erb') { |f| f.read }
  end

  def add check
    checks << check
  end

  def get_binding
    binding
  end

  def not_applicableable?
    ((name.downcase.include? "water") || (name.downcase.include? "sewer") || (name.downcase.include? "electric") || (name.downcase.include? "landfill"))
  end

  def print_javascript
    template = ERB.new @template_erb_script
    template.result(get_binding)
  end

  def cap words
    words.split(" ").map {|word| word.capitalize}.join(" ") if (word)
  end

  def acronymize words
    words.split(" ").map {|word| word.capitalize.chars.first}.join("") if (word)
  end


end
