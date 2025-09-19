# info.rb
# Replace with your actual details
name = "Sreevallabh"
reg_no = "21BCE1234"

File.open("about_me.txt", "a") do |file|
  file.puts "\nName: #{name}"
  file.puts "Registration Number: #{reg_no}"
end

puts "Name and Registration Number appended to file."
