#Define a split_in_two method that accepts an array. Id like to split the `array` into two arrays,
#If the original array has an even number of elements, ensure that the 2 new arrays have an equal number of elements. 
#If the original array has an odd number of elements, ensure that the first new array has the greater number of elements.

def split_in_two(array)
  if array.length % 2 == 0
    return array.first(array.length / 2), array.last(array.length / 2)
  else
    return array.first(array.length / 2), array.last(array.length / 2 + 1)
  end
end

# Get input from user
puts "Enter array elements separated by spaces:"
input = gets.chomp
arr = input.split.map(&:to_i)

first_half, second_half = split_in_two(arr)

puts " #{first_half}"
puts " #{second_half}"
