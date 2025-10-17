module Displayable
  def display_details
    puts "Student Name: #{@name}"
    puts "Registration No: #{@reg_no}"
    puts "Department: #{@department}"
    puts "-" * 30
  end
end

class Student
  include Displayable
  
  def initialize(name, reg_no, department)
    @name = name
    @reg_no = reg_no
    @department = department
  end
end

student1 = Student.new("Ananya", "24CSE1001", "CSE")
student2 = Student.new("Rahul", "24ECE1002", "ECE")
student3 = Student.new("Priya", "24IT1003", "IT")

puts "Student Details:"
puts "=" * 30

student1.display_details
student2.display_details
student3.display_details
