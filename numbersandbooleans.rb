# #introduction to class and next in ruby
# p 5.next
# p 5.class
# p -867.class
# p 8.08048.class
# p -0.84848.class
# p 999999.class

# #convert numbers to string and vice versa
# str="5"

# p str
# p str.class 
# p str.to_i
# p str.to_i.class
# p str.to_f
# p str.to_f.class

# number=10
# p number.class
# p number.to_s
# p number.to_s.class


# #float to integer or string
# pi=3.99
# p pi.to_i

# p pi.to_s
# p pi.to_s.class

# #Introduction to booleans

# p 5<10
# p 10>12
# age =25
# handsome=true
# stupid=false
# p handsome
# p stupid   
# p handsome.class
# p stupid.class

# #if ? is there in the end then it is called a predicate class and it will return if it is false or true



# p 5==5.00000000000000


#get a number from the user and check whtere it is odd or even number. print even if it s even and print odd if it is odd, without if or ternary
puts "Enter a number"
number=gets.chomp.to_i
number.even? ? (p "Even") : (p "Odd")
