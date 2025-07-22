# Student Management System using Case Statements - 5 Grade System

class Student
  attr_accessor :name, :age, :marks

  def initialize(name, age, marks)
    @name = name
    @age = age
    @marks = marks
  end

  def calculate_grade
    case @marks
    when 80..100
      "A"
    when 70..79
      "B"
    when 60..69
      "C"
    when 50..59
      "D"
    when 0..49
      "Fail"
    else
      "Invalid Marks"
    end
  end

  def age_category
    case @age
    when 5..12
      "Elementary"
    when 13..15
      "Middle School"
    when 16..18
      "High School"
    when 19..25
      "College"
    else
      "Adult Learner"
    end
  end

  def performance_message
    grade = calculate_grade
    case grade
    when "A"
      "Excellent work! Keep it up!"
    when "B"
      "Good job! You're doing well!"
    when "C"
      "Average performance. Try harder!"
    when "D"
      "Below average. Need more effort!"
    when "Fail"
      "Failing. Seek help immediately!"
    else
      "Invalid grade data"
    end
  end

  def display_info
    puts "=== Student Information ==="
    puts "Name: #{@name}"
    puts "Age: #{@age} (#{age_category})"
    puts "Marks: #{@marks}/100"
    puts "Grade: #{calculate_grade}"
    puts "Message: #{performance_message}"
    puts "=" * 30
  end
end

# Create some students with different grades
students = [
  Student.new("Alice Johnson", 16, 85),  # A grade
  Student.new("Bob Smith", 14, 75),      # B grade
  Student.new("Charlie Brown", 17, 65),  # C grade
  Student.new("Diana Prince", 15, 55),   # D grade
  Student.new("Eve Adams", 19, 35)       # Fail grade
]

# Display all student information
puts "STUDENT MANAGEMENT SYSTEM"
puts "5-Grade System: A (80-100), B (70-79), C (60-69), D (50-59), Fail (0-49)"
puts "=" * 60

students.each do |student|
  student.display_info
end

# Grade distribution demonstration
puts "\nGRADE DISTRIBUTION EXAMPLES:"
puts "=" * 30
test_scores = [95, 75, 65, 55, 25, 105]
test_scores.each do |score|
  temp_student = Student.new("Test", 16, score)
  puts "Score #{score}: Grade #{temp_student.calculate_grade}"
end
