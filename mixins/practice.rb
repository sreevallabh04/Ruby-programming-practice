# #create a class StudentGrade that represents a student's grafe in a course. Use Ruby's comparabel mixin so that grades can be 
# #compared with <,>,==,!=,<=,>=,between?
# 1. Map letter grades to numeric values using a constant hash:
# {"A+"=6,"A"=5,"B+"=4,"B"=3,"C+"=2,"C"=1,"F"=0}
# 2. store two attributes: letter(grade) and course(string) provide readers
# 3. Inlcude comparable and implement the <=> mehtod so comparions are based on the letter grade's values
# 4. Demonstrate:
# 5. A few comparisions (<,>,.between?)
# 6 .sorting an array of StudentGrade objects

class StudentGrade
  include Comparable

  LETTER_TO_VALUE = {
    "A+" => 6,
    "A"  => 5,
    "B+" => 4,
    "B"  => 3,
    "C+" => 2,
    "C"  => 1,
    "F"  => 0
  }.freeze

  attr_reader :letter, :course

  def initialize(letter, course)
    normalized_letter = letter.to_s.upcase
    unless LETTER_TO_VALUE.key?(normalized_letter)
      raise ArgumentError, "Invalid letter grade: #{letter}. Valid: #{LETTER_TO_VALUE.keys.join(', ')}"
    end
    @letter = normalized_letter
    @course = course.to_s
  end

  def <=>(other)
    return nil unless other.is_a?(StudentGrade)
    LETTER_TO_VALUE.fetch(letter) <=> LETTER_TO_VALUE.fetch(other.letter)
  end

  def to_s
    "#{course}: #{letter}"
  end
end

# Demonstration
if __FILE__ == $0
  g_math_a  = StudentGrade.new("A",  "Mathematics")
  g_sci_bp  = StudentGrade.new("B+", "Science")
  g_hist_c  = StudentGrade.new("C",  "History")
  g_cs_b    = StudentGrade.new("B",  "Computer Science")
  g_pe_f    = StudentGrade.new("F",  "Physical Education")

  puts "Comparisons:"
  puts "A > B+ ? #{g_math_a > g_sci_bp}"
  puts "C <= B ? #{g_hist_c <= g_cs_b}"
  puts "B+ == B ? #{g_sci_bp == g_cs_b}"
  puts "C between F and B ? #{g_hist_c.between?(g_pe_f, g_cs_b)}"

  puts "\nSorting:"
  grades = [g_hist_c, g_math_a, g_sci_bp, g_cs_b, g_pe_f]
  sorted = grades.sort
  puts sorted.map(&:to_s).join(", ")
end
  