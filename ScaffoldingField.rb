class ScaffoldingField
  attr_accessor :category, :sub_category, :tertiary_category, :field, :db_type

  def initialize
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
    "@#{name}".gsub(' ', '')
  end

  def csharp_name
    name.gsub(' ', '')
  end

  def sql_column
    "[#{name.gsub(' ', '')}]"
  end

  def sql_column_name
    name.gsub(' ', '')
  end

  def webform_textbox
    "txt#{csharp_name}"
  end

  def cap words
	words.split(" ").map {|words| words.capitalize}.join(" ") if (words)
  end
  
end
