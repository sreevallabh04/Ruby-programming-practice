class Sreevallabh
  
  def initialize(name, age, course)
    @name = name
    @age = age
    @course = course
    @student_id = "22MIS1170"
    puts "Student #{@name} created with ID: #{@student_id}"
  end
  
  def info
    puts "#{@name}, Age: #{@age}, Course: #{@course}, ID: #{@student_id}"
  end
end

sree = Sreevallabh.new("Sreevallabh", 20, "Ruby Programming")
sree.info

