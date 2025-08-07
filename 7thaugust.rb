

#A function that reads elements for an array and pushes into another arrays based on  if the number is positive or negative
def read_elements(array)
  positive_array = []
  negative_array = []

  array.each do |element|
    if element > 0
      positive_array.push(element)
    elsif element < 0
      negative_array.push(element)
    end
  end

  return positive_array, negative_array
end

puts "Enter numbers separated by spaces:"
input = gets.chomp
test_array = input.split.map(&:to_i)

positive, negative = read_elements(test_array)

puts "Original array: #{test_array}"
puts "Positive numbers: #{positive}"
puts "Negative numbers: #{negative}"


















