
username = "admin"
password = "123"

# Variables
attempts = 0

puts "=== LOGIN SYSTEM ==="

while attempts < 3
  puts "\nAttempt #{attempts + 1}:"
  
  print "Username: "
  user_input = gets.chomp
  
  print "Password: "
  pass_input = gets.chomp
  
  if user_input == username && pass_input == password
    puts "SUCCESS! Welcome!"
    break
  else
    puts "Wrong username or password!"
    attempts += 1
  end
  
  if attempts == 3
    puts "QUIT! BYE BYE!"
  end
end

