# #Arrays part 3
# candies=["eclairs","chocolate", "lollipops", "gummy bears", "marshmallows"]
# candies.each do |i|
#   puts "I love eating #{i}!"
# end


# #

# names=["Alice", "Bob", "Charlie", "Diana"]
# names.each do |i|
#   puts i.upcase
# end

# [1,2,3,4,5].each do |num|
#   square = num * num
#   puts "The square of #{num} is #{square}"
# end

#You can also put predicate methods

#you can also add i and j

shirts=["red", "blue", "green", "yellow"]
ties=["black", "white", "gray", "purple"]
shirts.each do |shirt|
  ties.each do |tie|
    puts "I love wearing a #{shirt} shirt with a #{tie} tie"
  end
end