File.open("myFile.txt", "w") do |file|
  file.puts "Hello World"
  file.puts "No line break here!!"
  file.puts "This is fun"
  file.puts "How to fix up a heart that I let down1?"
  file.puts "Now I am searching every "
end

File.open("myFile.txt", "a") do |file|
  file.puts "Hello World"
  file.puts "No line break here!!"
  file.puts "This is fun"
  file.puts "How to fix up a heart that I let down1?"
  file.puts "Now I am searching every "
end

# File.rename("myFile.txt", "yourFile.txt")

if File.exist?("newName.txt")
  File.delete("newName.txt")
else
  puts "File does not exist"
end