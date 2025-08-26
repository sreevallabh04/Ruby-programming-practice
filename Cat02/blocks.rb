#Introduction to blocks

#syntax for single line block
[3,5,7,9].each {|i| puts i**2}


def pass_control
  puts "This is inside the method"
  yield
  puts "Now I am back inside the method"
end
pass_control { puts "Now I'm inside the block" }

