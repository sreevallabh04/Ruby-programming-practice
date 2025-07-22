# if 1<2
#   puts "yes"
# else
#   p no
# end
# puts 1<2? "yes" : "no"



# pokemon = "Pikachu"

# puts pokemon == "Charizard" ? "Fireball" : "That is not a charizard"

#program 1


# simple login form 
# get username and password from user
# if both match then puts "login success"
# if either one matches then puts accordingly


# correct_username = "user123"
# correct_password = "pass456"

# puts "Enter username: "
# username = gets.chomp

# puts "Enter password: "
# input_password = gets.chomp


# if username == correct_username && input_password == correct_password
#   puts "Login success"
# elsif username == correct_username
#   puts "Username matched, but password incorrect"
# elsif input_password == correct_password
#   puts "Password matched, but username incorrect"
# else
#   puts "Both username and password are incorrect"
# end


#program 2
# a student has attempted an exqam three times and has recieved marks for each attempt. Identify the maximum mark of the three attempts and check if he has pasased or failed


# PASS_MARK = 40

# puts "Enter marks for attempt 1: "
# mark1 = gets.chomp.to_i

# puts "Enter marks for attempt 2: "
# mark2 = gets.chomp.to_i

# puts "Enter marks for attempt 3: "
# mark3 = gets.chomp.to_i

# max_mark = [mark1, mark2, mark3].max

# puts "Maximum mark: #{max_mark}"

# if max_mark >= PASS_MARK
#   puts "Status: Passed"
# else
#   puts "Status: Failed"
# end


#program 3

#Compute simple interest for give principle number of years and rate of itnerest. Get the rate of interest from the user

# puts "Enter the principal amount"

# principal=gets.chomp.to_i

# puts "Enter the number of years"

# years=gets.chomp.to_i

# puts "Enter the rate of interest"

# interest=gets.chomp.to_i

# simple_interest=(principal*years*interest)/100

# puts "The simple interest is #{simple_interest}"


#program 4


# ruby code for 
# Basic calculator application have methods fore each opeatrtion./ Get the desired opeatrtion from the user and then do the operation.

#   Get the choice fromt the user as 1.2.3.4 meaning 2 for addition 2 for subtractoin 3 for multplication and 4 for division


def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def divide(a, b)
  if b == 0
    return "Error: Division by zero is not allowed."
  else
    a.to_f / b
  end
end

puts "Basic Calculator"
puts "Choose an operation:"
puts "1. Addition (+)"
puts "2. Subtraction (-)"
puts "3. Multiplication (*)"
puts "4. Division (/)"

print "Enter your choice (1/2/3/4): "
choice = gets.chomp.to_i

if ![1, 2, 3, 4].include?(choice)
  puts "Invalid choice. Please run the program again and select 1, 2, 3, or 4."
  exit
end

print "Enter the first number: "
num1 = gets.chomp.to_f

print "Enter the second number: "
num2 = gets.chomp.to_f

result = case choice
         when 1
           add(num1, num2)
         when 2
           subtract(num1, num2)
         when 3
           multiply(num1, num2)
         when 4
           divide(num1, num2)
         end

puts "Result: #{result}"
