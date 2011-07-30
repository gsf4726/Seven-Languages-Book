#Day3.rb
#Ruby - Chapter 2, Day 3 Self-Study

puts "Task: Modify the CSV application to support an each method to return a CsvRow object."

class CsvRow
  attr_accessor :headers, :values
  
  def initialize(headers, values)
    @headers = headers
    @values = values
  end

  def method_missing(name, *args)
    index = @headers.index(name.to_s)
    if index
      @values[index]
    else
      "Invalid method or column name."
    end
  end
end

module ActsAsCsv

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def each
      @csv_contents.each do |values|
        yield CsvRow.new(@headers, values)
      end
    end

  end

end

class RubyCsv  # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

#Test
puts
puts "Testing RubyCsv..."

csv = RubyCsv.new
csv.each {|row| puts "#{row.fname} #{row.lname} is from #{row.city}"}

puts
puts "Testing RubyCsv - Invalid column name..."
csv.each {|row| puts row.state}