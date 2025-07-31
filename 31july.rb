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
p first_name=first_name+last_name
p first_name=first_name.concat(last_name)

#prepend

#.length and .size methods

#Extract multiple characters from string
story="Once upon a time, there lived a ghost. He was known to be a killer and feared the mostest"
p story[5]
p story [0,5]
p story.slice(0.5)
p story[0,story.length]
p story[-4,5]

#extract multiple characters with range object

story="Once upon a time, there lived a ghost. He was known to be a killer and feared the mostest"
p story[0..5]
p story.slice(0..5)
p story[0...5]
p story.slice(0...5)
p story[0..50]
p story
p story[25..-9]


#How to fix up a heart that I let down
# Now I'm searching every lonely place
#Every corner calling out your name
#Tryna find you but I just dont know
#Where do broken hearts go

#Overwrite characters in string with bracket lyrics


fact="I love India"
p fact
p fact[6]
fact[7,16]="India"
p fact
fact[7..-1]= "Canada"
p fact


#Case methods
puts "hello".capitalize


