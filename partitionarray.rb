foods=["chicken","pizzas","burger","sushi","salad","Idli","Dosa","Chicken Biryani","Chicken Curry"]
good=foods.select {|i| i.include?("Chicken")} 
bad=foods.reject{  |i| i.include?("Chicken")}
p good
p bad
p foods.partition{|i| i.include?("Chicken")}
good1,bad1=foods.partition{|i| i.include?("Chicken")}
p good1
p bad1
