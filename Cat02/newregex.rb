# phrase ="Ruby programming language is amazing!!"
# puts phrase.scan(/.am/)
# puts phrase.scan(/.ing/)
# puts phrase.scan(/a.e/)
# puts phrase.scan(/.ng/)


paragraph = "This is my esay. I deserve an A. I rank it 5 out 5"
p paragraph.scan(/\./)
p paragraph.scan(/\d/)
p paragraph.scan(/\D/)
p paragraph.scan(/\S/)
p paragraph.scan(/\s/).length
p paragraph.scan(/\S/)

poem= "and roses are red, not always"
p poem.scan(/\A\d+/)

p poem.scan(/ays\z/)


#exclude

sales= "I bought 9 apples, 25 bananas and 4 oranges at the store"
puts sales.scan(/[^aeiouAEIOU]/)
puts sales.scan(/[^aeiou]/)
puts sales.scan(/[^a-z]/)

#sub and gsub
puts "wordplay".sub("w","sw")
puts "wordplay".sub("word","sword")
word = "aspirin"
puts word.sub("in","ing")

#gsub

puts "an apple".gsub("a","an")

puts "5555551234".gsub("5","6")
puts "(555-555-1234".gsub("-","")