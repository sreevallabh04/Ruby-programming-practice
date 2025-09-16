#Range to Array using to_a method
# This code demonstrates how to convert a range into an array using the to_a method in Ruby

letters_range="A".."F"
p letters_range
letters_array=letters_range.to_a
p letters_array
numbers_range=1..10
p numbers_range
numbers_array=numbers_range.to_a
p numbers_array
letters_array.push("G")
p letters_array
numbers_array.push(11)
p numbers_array