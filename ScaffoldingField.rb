class ScaffoldingField
  attr_accessor :calculation_group, :calculation_table, :category, :sub_category, :tertiary_category, :field, :db_type, :calculated, :subtraction

  def initialize
    @subtraction = false
  end

  def csharp_type
    if @db_type.include? 'decimal'
      "decimal"
    elsif @db_type.include? 'varchar'
      "string"
    elsif @db_type.include? 'int'
      "int"
    elsif @db_type.include? 'bit'
      "bool"
    else
      "string"
    end

  end

  def name
    result = cap @field
    result = "#{cap @tertiary_category}_#{result}" if @tertiary_category
    result = "#{cap @sub_category}_#{result}" if @sub_category
    result = "#{cap @category}_#{result}" if @category
    result
  end

  def sql_parameter
    "@#{clean name.gsub(' ', '')}"
  end

  def display_name
    result = cap @field
    result = "#{cap @tertiary_category} - #{result}" if @tertiary_category
    result = clean_english result
    result
  end

  def csharp_name
    clean name.gsub(' ', '')
  end

  def sql_column
    "[#{clean name.gsub(' ', '')}]"
  end

  def sql_column_name
    clean name.gsub(' ', '')
  end

  def calculated_name
    clean field.gsub(' ', '')
  end

  def webform_textbox
    "txt#{csharp_name}"
  end

  def view_field_id
    clean name.gsub(' ', '_')
  end

  def cap words
    words = words.split(" ").map {|word| word.capitalize}.join(" ") if (words) 
    words.gsub!(/\((\w*?)(\)|\s)/) {|match| "(#{$1.capitalize}#{$2}" } 
    words
  end

  def clean_english words
    words.gsub(' Of ', ' of ').gsub(' And ', ' and ').gsub(' In ', ' in ').gsub(' From ', ' from ').gsub(' To ', ' to ').gsub(' For ', ' for ')
  end

  def clean words
    words.gsub(/[,()]/,'')
  end
end
