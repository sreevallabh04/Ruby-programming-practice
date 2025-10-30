class Employee
  attr_accessor :age
  att_reader :name
  def initialize(name, age)
    @name = name
    @age = age
  end
  def initialize
    "Hi, my name is #{name} and I am #{age} years old"
  end
end
jackson = Employee.new("Jackson",18)
puts jackson.introduce
