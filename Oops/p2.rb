# log_report.rb
input_file = "simple.log"
output_file = "report.txt"

unless File.exist?(input_file)
  puts "Input file #{input_file} not found."
  exit
end

lines = File.readlines(input_file)
total_lines = lines.size
error_count = 0
warn_count = 0
modules = Set.new

lines.each do |line|
  error_count += 1 if line =~ /ERROR/i
  warn_count += 1 if line =~ /WARN/i
  if line =~ /\[module:(\w+)\]/
    modules << $1
  end
end

File.open(output_file, "w") do |f|
  f.puts "Total lines: #{total_lines}"
  f.puts "ERROR lines: #{error_count}"
  f.puts "WARN lines: #{warn_count}"
  f.puts
  f.puts "Modules found:"
  modules.each { |m| f.puts m }
end
