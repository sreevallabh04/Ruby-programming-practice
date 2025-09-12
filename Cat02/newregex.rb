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