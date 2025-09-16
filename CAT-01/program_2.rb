#Calculating the area of different shapes
#This program will calculate the area of a rectangle, triangle, and circle based on user input
puts "Enter the length of the rectangle:"
length = gets.chomp.to_i
puts "Enter the width of the rectangle:"
width = gets.chomp.to_i
area = length * width
puts "The are area of the rectangle is #{area} square units."
puts "Enter the base of the triangle:"
base = gets.chomp.to_i
puts "Enter the height of the triangle:"
height = gets.chomp.to_i
area = 0.5 * base * height
puts "The area of the triangle is #{area} square units."
puts "Enter the radius of the circle:"
radius = gets.chomp.to_i
area = 3.14 * radius * radius
puts "The area of the circle is #{area} square units."

