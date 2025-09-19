# main.rb

# Step 1: Write content about yourself to a file
File.open("about_me.txt", "w") do |file|
  file.puts "My name is Sreevallabh. I am a dedicated Computer Science student \
with a strong interest in AI, IoT, and software development. I enjoy building \
real-world projects that solve meaningful problems, whether it’s creating smart \
systems with IoT or developing scalable apps with Flutter and Firebase. \
I believe in continuous learning and collaboration, and I am excited about \
opportunities to innovate and contribute in team-oriented environments."
end

# Step 2: Read contents of file
content = File.read("about_me.txt")

# Display number of characters
puts "Number of characters: #{content.length}"

# Display number of words
words = content.split(/\s+/)
puts "Number of words: #{words.size}"

# Step 3: Read contents into array and swap first and last words
arr = words.dup
arr[0], arr[-1] = arr[-1], arr[0]
puts "Content after swapping first and last words:"
puts arr.join(" ")

# Step 4: Count number of lines
lines = content.lines.count
puts "Number of lines: #{lines}"

# Step 5: Count number of paragraphs (paragraphs are separated by blank lines)
paragraphs = content.split(/\n\n+/).count
puts "Number of paragraphs: #{paragraphs}"

# Step 6: Count number of sentences (roughly split by . ! ?)
sentences = content.split(/[.!?]/).map(&:strip).reject(&:empty?).count
puts "Number of sentences: #{sentences}"

# Step 7: Load second Ruby file and append name + reg no.
load "info.rb"
