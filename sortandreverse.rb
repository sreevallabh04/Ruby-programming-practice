# p [1,2,3,4,5,6,7,8,9,10].sort
# p [1,2,3,4,5,6,7,8,9,10].reverse
# p [1,2,3,4,5,6,7,8,9,10].sort.reverse


# #max and min 

# stock_prices=[100, 200, 150, 300, 250]
# p stock_prices.max
# p stock_prices.min

# fruits = ["Appleeeeee", "kiwiiiiiiii", "bananananannanan", "Watermelon"]
# p fruits.max
# p fruits.minc


#Break in ruby

prizes=["gold", "silver", "bronze", "platinum"]
i=0
while i<prizes.length
  current_prize = prizes[i]
  if current_prize == "bronze"
    puts "yay! found bronze!"
    break
  else
    puts "#{current_prize} is not bronze"
  end
  i=i+1
end
