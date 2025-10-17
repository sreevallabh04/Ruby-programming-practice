module ShapeArea
  def area
    raise NotImplementedError, "Subclasses must implement the area method"
  end
end

class Circle
  include ShapeArea
  
  attr_accessor :radius
  
  def initialize(radius)
    @radius = radius
  end
  
  def area
    Math::PI * @radius * @radius
  end
end

class Rectangle
  include ShapeArea
  
  attr_accessor :length, :breadth
  
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
  
  def area
    @length * @breadth
  end
end

puts "Enter radius for circle:"
radius = gets.chomp.to_f

puts "Enter length for rectangle:"
length = gets.chomp.to_f

puts "Enter breadth for rectangle:"
breadth = gets.chomp.to_f

circle = Circle.new(radius)
rectangle = Rectangle.new(length, breadth)

puts "\nArea Calculations:"
puts "=" * 20
puts "Circle Area: #{circle.area.round(2)}"
puts "Rectangle Area: #{rectangle.area.round(2)}"
