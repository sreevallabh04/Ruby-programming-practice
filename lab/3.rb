class WordCollection
  include Enumerable
  
  def initialize(words)
    @words = words
  end
  
  def each
    @words.each { |word| yield word }
  end
end

words = ["apple", "banana", "cat", "elephant", "orange", "umbrella", "zebra"]
collection = WordCollection.new(words)

vowel_count = collection.count { |word| word.match?(/^[aeiouAEIOU]/) }
puts "Words starting with vowel: #{vowel_count}"

longest_word = collection.max_by { |word| word.length }
puts "Longest word: #{longest_word}"

all_longer_than_3 = collection.all? { |word| word.length > 3 }
puts "All words have more than 3 letters: #{all_longer_than_3}"

puts "\nAll words:"
collection.each { |word| puts word }
