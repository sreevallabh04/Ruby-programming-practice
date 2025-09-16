def rate_my_food(food)
  case food
  when "Rice"
  "Filled with carbs"
  when "Egg", "Dal", "Pulses"
    "Has proteins"
  when "Milk"
    "Has Calcium"
  else
    "Invalid Input"
  end
end
puts rate_my_food("Rice")

# Same function using if-else instead of case-when
def rate_my_food_with_if_else(food)
  if food == "Rice"
    "Filled with carbs"
  elsif food == "Egg" || food == "Dal" || food == "Pulses"
    "Has proteins"
  elsif food == "Milk"
    "Has Calcium"
  else
    "Invalid Input"
  end
end

puts rate_my_food_with_if_else("Rice")
puts rate_my_food_with_if_else("Egg")
puts rate_my_food_with_if_else("Milk")
puts rate_my_food_with_if_else("Banana")

#