class ScaffoldingField
  attr_accessor :name, :db_type

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

  def sql_parameter
    "@#{@name}".gsub(' ', '')
  end

  def csharp_name
    @name.gsub(' ', '')
  end

  def sql_column
    "[#{@name.gsub(' ', '')}]"
  end

  def sql_column_name
    @name.gsub(' ', '')
  end

end
