# //get the following details from the user and print them with the following fields and with thte conditions mentioned
# //1. name has to be appended with Mr.
# //2. Phone number has to be appended with +91
# 3. Email
# 4. branch
# 5. address
# 6. which year
# 7. which place are you coming from
#print all of them in a paragraph
puts "Enter your name:"
name = gets
puts "Enter your phone number:"
phone = gets.chomp.to_i
puts "Enter your email:"
email = gets.chomp
puts "Enter your branch:"
branch = gets.chomp
puts "Enter your year of study:"
year = gets.chomp.to_i
puts "Enter your place of study:"
place = gets.chomp
puts "Enter a famous place to visit in your Native place:"
native_place = gets.chomp
puts "Hello My name is Mr. #{name.chomp} and my phone number is +91#{phone}. My email is #{email}, I am studying in the #{year} year of #{branch} branch.
 I am from #{place}. A famous place to visit in my native place is #{native_place}."

