#Create a Student class to manage subjects and marks.
# • Add, update, and remove subject marks.
# • Calculate the average and return a grade:
# o A (90–100), B (75–89), C (60–74), D (40–59), F (below 40)


class Student
  attr_accessor :name

  def initialize(name)
    @name = name
    @marks_by_subject = {}
  end

  def add_mark(subject, marks)
    value = normalize_mark(marks)
    if value.nil?
      puts "Invalid mark"
      return false
    end
    @marks_by_subject[subject] = value
    true
  end

  def update_mark(subject, marks)
    unless @marks_by_subject.key?(subject)
      puts "Subject not found"
      return false
    end
    add_mark(subject, marks)
  end

  def remove_mark(subject)
    if @marks_by_subject.delete(subject)
      true
    else
      puts "Subject not found"
      false
    end
  end
  
    def average
      return 0.0 if @marks_by_subject.empty?
      total = @marks_by_subject.values.sum
      total.to_f / @marks_by_subject.size
    end

  def grade
    avg = average
    case avg
    when 90..100 then 'A'
    when 75...90 then 'B'
    when 60...75 then 'C'
    when 40...60 then 'D'
    else 'F'
    end
  end

  def to_s
    formatted_avg = format('%.2f', average)
    "#{@name}: Avg=#{formatted_avg}, Grade=#{grade}"
  end

  private

  def normalize_mark(marks)
    value = marks.to_f
    return nil if value.nan? || value < 0 || value > 100
    value
  end
end

# --- Sample usage (for testing) ---
# stu = Student.new("Charlie")
# stu.add_mark("Math", 95)
# stu.add_mark("Science", 82)
# stu.update_mark("Science", 88)
# stu.remove_mark("History") # prints "Subject not found"
# puts stu.average  # => 91.5
# puts stu.grade    # => A
# puts stu          # => Charlie: Avg=91.50, Grade=A


