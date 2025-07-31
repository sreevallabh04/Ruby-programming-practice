#Module 2
#Introduction to Strings
# name= string.new("Hello")
# puts name


#Multiple lines

words=<<MLS
Hi How are you
Welcome to ruby programming
MLS

puts words

# #Escape characters
# puts "Hello welcome \ "to ruby programming\"
# puts "Lets add a line \n to this string"
# puts "Tab \t space"

p "Apple" < "Banana" # true
p "Apple" > "Banana" # false    
p "Apple" == "Apple" # true
p "Apple" == "Banana" # false
p "Apple" != "Banana" # true
p "Apple" != "Apple" # false
p "Apple" <=> "Banana" # true
p "Apple" <=> "Apple" # false


#Concatenate Strings
first_name = "John"
last_name = "Doe"
full_name = first_name + " " + last_name
puts full_name
full_name = first_name + " " + last_name
puts full_name

p first_name.concat(last_name)
