# #Introduction to blocks

# #syntax for single line block
# [3,5,7,9].each {|i| puts i**2}


# # def pass_control
# #   puts "This is inside the method"
# #   yield
# #   puts "Now I am back inside the method"
# # end
# # pass_control { puts "Now I'm inside the block" }
# # end


# # Yield keyword returns implicity, no need to use return keyword

# def who_am_i
#   adjective=yield
#   puts "I am very #{adjective}"
# end
# who_am_i {"Sreevallabh"}
# who_am_i {"Brad Pitt"}


#Procs-1

#Without procs

a=[1,2,3,4,5]
b=[6,7,8,9,10]
c=[11,12,13,14,15]
a_cubes=a.map{|num| num**3}
b_cubes=b.map{|num| num**3}
c_cubes=c.map{|num| num**3}
p a_cubes
p b_cubes
p c_cubes

#With procs

Cubes=Proc.new {|num| num**3}
a=[1,2,3,4,5]
b=[6,7,8,9,10]
c=[11,12,13,14,15]
a_cubes=a.map(&Cubes)
b_cubes=b.map(&Cubes)
c_cubes=c.map(&Cubes)
p a_cubes
p b_cubes
p c_cubes


#You can also return boolean values in proc

ages=[33,60,83,30,43,35]
is_old =Proc.new do |age|
  age > 55
end 
p ages.select(&is_old)
