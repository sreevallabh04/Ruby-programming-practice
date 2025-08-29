# #Time object
# today = Time.now
# p today.class 
# p Time.now
  

# p Time.new(2015,5,18,23,50,10)
# last_may=Time.new(2015,5,18,23,50,10)
# p last_may

# today=Time.now
# p today
# p today.sec
# p today.wday
# p today.hour
# p today.year
# p today.month
# p today.yday
# p today.min

# p today.dst?

# start_of_year=Time.new(2015,1,1,0,0,0)
# p start_of_year
# p start_of_year + 60
# p start_of_year + 240
# p start_of_year -180
# p start_of_year + (60*3)
# p start_of_year + (60*60*24)
# p start_of_year + (60*60*24*45)


# #comparisions operators on Time object
# birthday=Time.new(2020,1,1)
# summer=Time.new(2020,6,21)
# winter=Time.new(2020,12,21)
# puts birthday < summer
# puts independence_day = Time.new(2020,15,8)
# puts birthday==Time.new(2020,1,1)

# puts independence_day.between?(birthday,winter)
# puts independence_day.between?(summer,winter) 


#Convert Time object to other objects

someday=Time.new(2020,1,1)
p someday.yday
p someday.wday
puts someday.to_s
puts someday.ctime
p someday.to_a
