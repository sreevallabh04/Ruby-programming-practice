# print "limit: "
# limit = gets.chomp.to_i

# a = 0
# b = 1

# puts a
# puts b

# while true
#   next_fib = a + b
#   if next_fib > limit
#     break
#   end
#   puts next_fib
#   a = b
#   b = next_fib
# end



# #Another method to generate Fibonacci series

# puts "Enter limit: "
# limit = gets.chomp.to_i
# a,b=0,1
# puts a
# puts b
# while a<limit
#   puts a
#   a,b=b,a+b
# end


puts "Enter the input number"
input = gets.chomp.to_i
sum = 0

if input < 0
  puts "Invalid input"
elsif input < 10
  puts "The sum is #{input}"
else
  while input > 0
    sum += input % 10
    input /= 10
  end
  puts "The sum is #{sum}"
end
