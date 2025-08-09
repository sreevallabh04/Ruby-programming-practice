array = ["level", "hello", "radar", "world", "madam"]
palindromes = array.select do |str|
  str == str.reverse
end
p palindromes
