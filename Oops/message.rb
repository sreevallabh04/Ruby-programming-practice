  # email_scan.rb
  input_file = "messages.txt"
  emails_file = "emails.txt"
  masked_file = "masked_messages.txt"

  unless File.exist?(input_file)
    puts "Input file #{input_file} not found."
    exit
  end

  email_regex = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b/
  unique_emails = []
  masked_lines = []

  lines = File.readlines(input_file)
  lines.each do |line|
    found = line.scan(email_regex)
    found.each { |e| unique_emails << e unless unique_emails.include?(e) }
    masked_lines << line.gsub(email_regex, "***EMAIL***")
  end

  File.open(emails_file, "w") { |f| unique_emails.each { |e| f.puts e } }
  File.open(masked_file, "w") { |f| masked_lines.each { |l| f.puts l } }

  puts "Total lines processed: #{lines.size}"
  puts "Unique emails found: #{unique_emails.size}"
