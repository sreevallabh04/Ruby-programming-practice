numbers=[1,2,3,"Hello",4,5,6,7,8]
numbers.each do |i|
  if i.is_a?(Integer)
    puts "square of #{i} is #{i**2}"
  else
    puts "Not a number and exiting"
    break
  end
end


# next.rb

numbers=[1,2,3,"Hello",4,5,6,7,8]
numbers.each do |i|
  if i.is_a?(Integer)
    puts "square of #{i} is #{i**2}"
  else
    puts "Not a number and exiting"
    next
  end
end


