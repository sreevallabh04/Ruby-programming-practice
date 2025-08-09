# ============================================
# BEGINNER FRIENDLY RUBY PROGRAM
# ============================================
# This program teaches you the basics of Ruby
# Each section introduces a new concept

puts "Hello! Welcome to Ruby programming!"
puts "=" * 40

# ============================================
# 1. VARIABLES AND DATA TYPES
# ============================================
puts "\n1. VARIABLES AND DATA TYPES:"
puts "-" * 30

# String variables (text)
name = "Alice"
age = 25
height = 5.6
is_student = true

puts "Name: #{name} (String)"
puts "Age: #{age} (Integer)"
puts "Height: #{height} (Float)"
puts "Is student: #{is_student} (Boolean)"

# ============================================
# 2. STRING OPERATIONS
# ============================================
puts "\n2. STRING OPERATIONS:"
puts "-" * 30

first_name = "John"
last_name = "Doe"

# String concatenation (joining strings)
full_name = first_name + " " + last_name
puts "Full name: #{full_name}"

# String interpolation (embedding variables in strings)
puts "Hello, #{first_name}! You are #{age} years old."

# String methods
message = "hello world"
puts "Original: #{message}"
puts "Uppercase: #{message.upcase}"
puts "Capitalized: #{message.capitalize}"
puts "Length: #{message.length}"

# ============================================
# 3. NUMBERS AND MATH
# ============================================
puts "\n3. NUMBERS AND MATH:"
puts "-" * 30

a = 10
b = 3

puts "a = #{a}, b = #{b}"
puts "Addition: #{a + b}"
puts "Subtraction: #{a - b}"
puts "Multiplication: #{a * b}"
puts "Division: #{a / b}"
puts "Remainder: #{a % b}"
puts "Power: #{a ** b}"

# Converting between types
number_string = "42"
number = number_string.to_i  # Convert string to integer
puts "String '42' converted to number: #{number}"

# ============================================
# 4. CONDITIONAL STATEMENTS (IF/ELSE)
# ============================================
puts "\n4. CONDITIONAL STATEMENTS:"
puts "-" * 30

user_age = 18

if user_age >= 18
    puts "You are an adult!"
elsif user_age >= 13
    puts "You are a teenager!"
else
    puts "You are a child!"
end

# Comparison operators
temperature = 75
puts "Temperature is #{temperature}°F"

if temperature > 80
    puts "It's hot outside!"
elsif temperature > 60
    puts "It's nice weather!"
else
    puts "It's cold outside!"
end

# ============================================
# 5. LOOPS
# ============================================
puts "\n5. LOOPS:"
puts "-" * 30

# For loop (counting)
puts "Counting from 1 to 5:"
for i in 1..5
    print "#{i} "
end
puts "\n"

# While loop
puts "Counting down from 5:"
counter = 5
while counter > 0
    print "#{counter} "
    counter -= 1
end
puts "\n"

# Each loop (for arrays)
fruits = ["apple", "banana", "orange"]
puts "My favorite fruits:"
fruits.each do |fruit|
    puts "- #{fruit}"
end

# ============================================
# 6. ARRAYS (LISTS)
# ============================================
puts "\n6. ARRAYS:"
puts "-" * 30

# Creating arrays
colors = ["red", "green", "blue"]
numbers = [1, 2, 3, 4, 5]

puts "Colors: #{colors}"
puts "Numbers: #{numbers}"

# Adding to arrays
colors << "yellow"
puts "After adding yellow: #{colors}"

# Accessing array elements
puts "First color: #{colors[0]}"
puts "Last color: #{colors[-1]}"

# Array methods
puts "Number of colors: #{colors.length}"
puts "Colors sorted: #{colors.sort}"

# ============================================
# 7. HASHES (DICTIONARIES)
# ============================================
puts "\n7. HASHES:"
puts "-" * 30

# Creating a hash (key-value pairs)
person = {
    "name" => "Bob",
    "age" => 30,
    "city" => "New York"
}

puts "Person: #{person}"
puts "Name: #{person['name']}"
puts "Age: #{person['age']}"

# Adding to hash
person["job"] = "Developer"
puts "After adding job: #{person}"

# ============================================
# 8. METHODS (FUNCTIONS)
# ============================================
puts "\n8. METHODS:"
puts "-" * 30

# Simple method
def greet(name)
    return "Hello, #{name}!"
end

# Method with default parameter
def introduce(name, age = 25)
    "Hi, I'm #{name} and I'm #{age} years old."
end

# Method that calculates area
def calculate_area(length, width)
    area = length * width
    return "The area is #{area} square units"
end

# Using the methods
puts greet("Sarah")
puts introduce("Mike", 28)
puts introduce("Lisa")  # Uses default age
puts calculate_area(10, 5)

# ============================================
# 9. USER INPUT
# ============================================
puts "\n9. USER INPUT:"
puts "-" * 30

puts "What's your favorite color?"
# favorite_color = gets.chomp  # Uncomment to try user input
# puts "Your favorite color is #{favorite_color}!"

# For now, let's simulate user input
favorite_color = "blue"
puts "Your favorite color is #{favorite_color}!"

# ============================================
# 10. PUTTING IT ALL TOGETHER
# ============================================
puts "\n10. PUTTING IT ALL TOGETHER:"
puts "-" * 30

# A simple program that uses multiple concepts
def create_simple_story
    characters = ["Alice", "Bob", "Charlie"]
    places = ["park", "library", "cafe"]
    actions = ["read", "walked", "danced"]
    
    character = characters.sample
    place = places.sample
    action = actions.sample
    
    story = "#{character} went to the #{place} and #{action} there."
    return story
end

puts "Here's a random story:"
puts create_simple_story()

# ============================================
# CONCLUSION
# ============================================
puts "\n" + "=" * 40
puts "CONGRATULATIONS!"
puts "You've learned the basics of Ruby!"
puts "=" * 40

puts "\nKey concepts covered:"
puts "✓ Variables and data types"
puts "✓ String operations"
puts "✓ Numbers and math"
puts "✓ Conditional statements"
puts "✓ Loops"
puts "✓ Arrays"
puts "✓ Hashes"
puts "✓ Methods"
puts "✓ User input"

puts "\nTry running this program and experiment with the code!"
puts "Change values, add new features, and have fun learning Ruby!" 