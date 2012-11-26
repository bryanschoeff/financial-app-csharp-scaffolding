class ScaffoldingField
  attr_accessor :name, :db_type

  def initialize
  end

  def csharp_type
    if @db_type.include? 'varchar'
      "string"
    elsif @db_type.include? 'int'
      "int"
    elsif @db_type.include? 'bit'
      "bool"
    else
      "string"
    end

  end

  def sql_parameter_name
    "@#{@name}"
  end

  def print_csharp_variable
  end

  def print_sql_parameter
  end

  def sql_column_name
    "#{@name}"
  end


end
