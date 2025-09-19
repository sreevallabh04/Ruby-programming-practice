def valid_mobile?(number)
  if number =~ /^[1-9][0-9]{9}$/
    puts "Valid mobile number"
  else
    puts "Invalid mobile number"
  end
end

print "Enter mobile number: "
num = gets.chomp
valid_mobile?(num)
