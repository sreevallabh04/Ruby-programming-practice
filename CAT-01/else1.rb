puts "Enter a number"

def odd_even(number)
  if number.odd?
    puts "The number #{number} is odd."
  else
    puts "Even number"
  end
end
input = gets.chomp.to_i
odd_even(input)