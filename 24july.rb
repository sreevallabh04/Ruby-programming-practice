print "Enter the limit: "
limit = gets.chomp.to_i

a = 0
b = 1

puts a
puts b

while true
  next_fib = a + b
  if next_fib > limit
    break
  end
  puts next_fib
  a = b
  b = next_fib
end