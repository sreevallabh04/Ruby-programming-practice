#Define a ruby method split_by_threshold that accepts an array of integers and a threshold. Split the array into thwo arrays one containgn elements less than threshold and the the other more than threshold. return two arrays 

def split_by_threshold(array,threshold)
  positive_array = []
  negative_array = []
  array.each do |element|
    if element > threshold
      positive_array.push(element)
      # positive_array.push(threshold)
    elsif element < threshold
      negative_array.push(element)
    end
  end
  return positive_array, negative_array
end

puts "Enter the array and the threshold"
input = gets.chomp
test_array=input.split.map(&:to_i)
threshold=gets.chomp
threshold=threshold.to_i
positive_numbers, negative_numbers = split_by_threshold(test_array,threshold)
puts "[ #{positive_numbers} #{negative_numbers}]" 

