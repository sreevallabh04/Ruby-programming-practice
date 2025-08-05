# Arrays in Ruby - A Beginner's Guide
# Arrays are ordered collections of objects (elements) that can store multiple values
# Think of an array like a list or a container that holds multiple items

puts "=== INTRODUCTION TO ARRAYS ==="

# 1. CREATING ARRAYS
puts "\n1. Creating Arrays:"

# Method 1: Using square brackets (most common way)
fruits = ["apple", "banana", "orange", "grape"]
puts "Fruits array: #{fruits}"

# Method 2: Using Array.new
numbers = Array.new
puts "Empty numbers array: #{numbers}"

# Method 3: Creating array with default values
zeros = Array.new(5, 0)  # Creates array with 5 elements, all set to 0
puts "Array with 5 zeros: #{zeros}"

# Method 4: Mixed data types (Ruby allows this!)
mixed_array = ["hello", 42, true, 3.14, "world"]
puts "Mixed array: #{mixed_array}"

# 2. ACCESSING ARRAY ELEMENTS
puts "\n2. Accessing Array Elements:"

# Arrays are indexed starting from 0
# Index:  0        1         2        3
# Array: ["apple", "banana", "orange", "grape"]

puts "First fruit (index 0): #{fruits[0]}"
puts "Second fruit (index 1): #{fruits[1]}"
puts "Last fruit (index 3): #{fruits[3]}"

# Negative indexing (counts from the end)
puts "Last fruit using -1: #{fruits[-1]}"
puts "Second to last fruit: #{fruits[-2]}"

# Using .first and .last methods
puts "First fruit using .first: #{fruits.first}"
puts "Last fruit using .last: #{fruits.last}"

# 3. ARRAY PROPERTIES
puts "\n3. Array Properties:"

puts "Number of fruits: #{fruits.length}"  # or fruits.size or fruits.count
puts "Is fruits array empty? #{fruits.empty?}"
puts "Does fruits include 'banana'? #{fruits.include?('banana')}"

# 4. ADDING ELEMENTS TO ARRAYS
puts "\n4. Adding Elements:"

# Method 1: Using << (shovel operator)
fruits << "mango"
puts "After adding mango: #{fruits}"

# Method 2: Using .push method
fruits.push("pineapple")
puts "After pushing pineapple: #{fruits}"

# Method 3: Using .unshift (adds to beginning)
fruits.unshift("strawberry")
puts "After unshifting strawberry: #{fruits}"

# Method 4: Using .insert (insert at specific position)
fruits.insert(2, "kiwi")  # Insert "kiwi" at index 2
puts "After inserting kiwi at index 2: #{fruits}"

# 5. REMOVING ELEMENTS FROM ARRAYS
puts "\n5. Removing Elements:"

# Remove last element
removed_fruit = fruits.pop
puts "Removed: #{removed_fruit}"
puts "Fruits after pop: #{fruits}"

# Remove first element
removed_first = fruits.shift
puts "Removed first: #{removed_first}"
puts "Fruits after shift: #{fruits}"

# Remove element at specific index
fruits.delete_at(1)  # Remove element at index 1
puts "After deleting element at index 1: #{fruits}"

# Remove specific value
fruits.delete("orange")  # Remove "orange" from array
puts "After deleting 'orange': #{fruits}"

# 6. MODIFYING ARRAY ELEMENTS
puts "\n6. Modifying Elements:"

# Change element at specific index
fruits[0] = "blueberry"
puts "After changing first element: #{fruits}"

# 7. ARRAY METHODS FOR BEGINNERS
puts "\n7. Useful Array Methods:"

sample_numbers = [5, 2, 8, 1, 9, 3]
puts "Original numbers: #{sample_numbers}"

# Sort the array
sorted_numbers = sample_numbers.sort
puts "Sorted numbers: #{sorted_numbers}"
puts "Original array unchanged: #{sample_numbers}"

# Sort the array in place (modifies original)
sample_numbers.sort!
puts "After sort!: #{sample_numbers}"

# Reverse the array
reversed = sample_numbers.reverse
puts "Reversed: #{reversed}"

# Join array elements into a string
fruits_string = fruits.join(", ")
puts "Fruits as string: #{fruits_string}"

# 8. ITERATING THROUGH ARRAYS
puts "\n8. Iterating Through Arrays:"

# Method 1: Using .each (most common)
puts "Printing each fruit:"
fruits.each do |fruit|
  puts "- #{fruit}"
end

# Method 2: Using .each_with_index
puts "Printing fruits with their index:"
fruits.each_with_index do |fruit, index|
  puts "#{index}: #{fruit}"
end

# Method 3: Using for loop
puts "Using for loop:"
for fruit in fruits
  puts "* #{fruit}"
end

# 9. ARRAY SLICING (GETTING MULTIPLE ELEMENTS)
puts "\n9. Array Slicing:"

letters = ["a", "b", "c", "d", "e", "f", "g"]
puts "Original letters: #{letters}"

# Get elements from index 1 to 3
puts "Elements 1 to 3: #{letters[1..3]}"

# Get elements from index 0 to 2 (3 elements)
puts "First 3 elements: #{letters[0, 3]}"

# Get last 3 elements
puts "Last 3 elements: #{letters[-3..-1]}"

# 10. MULTI-DIMENSIONAL ARRAYS (ARRAYS OF ARRAYS)
puts "\n10. Multi-dimensional Arrays:"

# Create a 2D array (like a table)
matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

puts "2D Array: #{matrix}"
puts "First row: #{matrix[0]}"
puts "Element at row 1, column 2: #{matrix[1][2]}"  # Should be 6

# 11. COMMON ARRAY OPERATIONS
puts "\n11. Common Operations:"

numbers1 = [1, 2, 3]
numbers2 = [4, 5, 6]

# Concatenation
combined = numbers1 + numbers2
puts "Combined arrays: #{combined}"

# Finding maximum and minimum
max_num = combined.max
min_num = combined.min
puts "Maximum: #{max_num}, Minimum: #{min_num}"

# Sum all elements (Ruby 2.4+)
total = combined.sum
puts "Sum of all numbers: #{total}"

# 12. CHECKING IF SOMETHING IS AN ARRAY
puts "\n12. Type Checking:"

puts "Is fruits an array? #{fruits.is_a?(Array)}"
puts "fruits class: #{fruits.class}"

# 13. PRACTICAL EXAMPLE
puts "\n13. Practical Example - Grade Book:"

# Store student grades
grades = [85, 92, 78, 96, 88, 73, 90]
puts "Student grades: #{grades}"

# Calculate statistics
average = grades.sum / grades.length.to_f
puts "Average grade: #{average.round(2)}"
puts "Highest grade: #{grades.max}"
puts "Lowest grade: #{grades.min}"

# Count students who passed (grade >= 70)
passing_grades = grades.select { |grade| grade >= 70 }
puts "Number of students who passed: #{passing_grades.length}"

puts "\n=== END OF ARRAYS TUTORIAL ==="
puts "Arrays are one of the most important data structures in programming!"
puts "Practice creating, modifying, and iterating through arrays to master them."
