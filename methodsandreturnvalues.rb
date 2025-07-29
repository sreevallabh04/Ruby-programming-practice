# test = "outside function"

# def introduce_myself
#   test = "inside function"
#   puts test
# end

# introduce_myself
# puts test


#Parameters and arugments

# def with_parameters(name, age)
#   puts "Hello, #{name}! I am  #{age} years old."
# end
# with_parameters("Sreevallabh", 20)


#Return values

def add_two_numbers(num1, num2)
  puts "Inside method def"
  return num1 + num2
end
puts add_two_numbers(10, 20)


#string

def nothing
end
p nothing

def return_string
  return "what will be the return Here!!"
end
p return_string


#Default parameter values

def make_phone_call(number, duration = 60,int_code= "+1",area_code = "123")
  puts "Calling #{number} for #{duration} seconds"
end
make_phone_call("1234567890")   
make_phone_call("1234567890",30)
make_phone_call("1234567890", 30, "+91", "456") # Overriding default values 

# How to fix up a heart that I let down
# Now I'm searching every lonely place


#Pareaenthesis and precedence

def verify(num1, num2)
  puts "Inside method def"
  return num1 + num2
end   
p verify(10, 20)      