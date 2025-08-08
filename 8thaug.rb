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

#each within index

colors =["red", "blue", "green", "yellow"]
colors.each_with_index do |i,j|
  puts "I love wearing a #{i} shirt with a #{j} tie"
end

#So tell me how is the idea alright?
#Usually large companies have supply chain from starting to end
#right from raw materials to last minute delivery
#the intermediate steps are so many and it differs from company to company
#What I was thinking is a project to identify where companies