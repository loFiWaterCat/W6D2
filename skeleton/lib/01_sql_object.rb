require_relative 'db_connection'
require 'active_support/inflector'

# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    # ...
  end

  def self.finalize!
  end

  def self.table_name=(table_name)
    # define_method("table_name=") do 
    #   instance_variables_set(@table_name, table_name)
    # end
    # define_method("table_name=") do |table_name|
    #   @table_name = table_name
    self.class.table_name = table_name
    
  end

  def self.table_name
    # self.to_s.downcase + "s"
    # str1 = self.to_s
    # str2 = ""
    # str1.each_char.with_index do |char, i|
    #   if char == char.upcase && i != 0
    #       str2 += "_" + char.downcase
    #   else
    #     str2 += char.downcase
    #   end
    # end
    # return str2 += "s"
    self.to_s.tableize
  end

  def self.all
    # ...
    # execute(<<-SQL)
    # SELECT
    # *
    # FROM
    # self.table_name;

    # SQL
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
