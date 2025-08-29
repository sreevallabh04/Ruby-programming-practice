# #Time object
# today = Time.now
# p today.class 
# p Time.now
  

# p Time.new(2015,5,18,23,50,10)
# last_may=Time.new(2015,5,18,23,50,10)
# p last_may

today=Time.now
p today
p today.sec
p today.wday
p today.hour
p today.year
p today.month
p today.yday
p today.min

p today.dst?

start_of_year=Time.new(2015,1,1,0,0,0)
p start_of_year
p start_of_year + 60
p start_of_year + 240
p start_of_year -180
  
