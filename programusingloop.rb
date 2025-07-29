print "Enter the number of students: "
num_students = gets.chomp.to_i

marks = []

for i in 0...num_students
  print "Enter marks for student #{i + 1}: "
  mark = gets.chomp.to_f
  marks << mark
end

puts "\nGrades:"
puts "=" * 30

for i in 0...marks.length
  mark = marks[i]
  
  grade = case mark
          when 90..100
            "A+"
          when 80...90
            "A"
          when 70...80
            "B"
          when 60...70
            "C"
          when 50...60
            "D"
          else
            "F"
          end
  
  puts "Student #{i + 1}: #{mark} marks - Grade: #{grade}"
end