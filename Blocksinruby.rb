#Blocksinruby

#Introduction to blocks 

# #For single line blocks
# 3.times { |i| puts "Sreevallabh #{i}"}

# #For multi line blocks
# 3.times do |i|
#   puts "Sreevallabh #{i}"
#   puts "Hello World #{i}"

# end


#The other way

# 3.times {puts "Sreevallabh!"}

# 3.times do 
#   puts "Christy Jackson"
#   puts "Hello World"

# end

#the .upto and .downto method

# 5.downto(1) { |i| puts i}

#   5.downto(1) do |i|
#     puts "Countdown : #{i}"
#   end



# 10.upto(15) { |i| puts i}
# 10.upto(15) do |i|
# #   puts "Moving up:    #{i}"
# end


#step method


1.step(10,2) {|i| puts i}
0.step(10,2) do |i|
  puts "from do end #{i}"
  end


  #Now print from 9 to 1
  1.step(9,1){|i| puts i}
  puts "from do end #{i}"
  end