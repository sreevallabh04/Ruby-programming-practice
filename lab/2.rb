class Vehicle
  include Comparable
  
  attr_accessor :name, :max_speed
  
  def initialize(name, max_speed)
    @name = name
    @max_speed = max_speed
  end
  
  def <=>(other)
    max_speed <=> other.max_speed
  end
end

car = Vehicle.new("Car", 120)
bike = Vehicle.new("Bike", 80)
truck = Vehicle.new("Truck", 90)
bus = Vehicle.new("Bus", 100)

puts "Car > Bike: #{car > bike}"
puts "Bike < Truck: #{bike < truck}"
puts "Bus between Car and Bike: #{bus.between?(bike, car)}"

vehicles = [car, bike, truck, bus]
sorted_vehicles = vehicles.sort

puts "\nVehicles sorted by speed:"
sorted_vehicles.each { |v| puts "#{v.name}: #{v.max_speed} km/h" }
