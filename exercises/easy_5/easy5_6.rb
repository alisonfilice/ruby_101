# Letter Count (Part 1)
=begin
Input - string
Output - Hash
Problem - take a string and return a hash that categorizes the number of words of different sizes
Example
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}
Algorithm
- make and empty hash
- split the string into different words in an array
- iterate through the ray
  - send the word to the new hash as the key and
  - the number of characters in each word as the corresponding value
=end

def word_sizes(string)
  letter_count = Hash.new(0)
  string.split.map do |word|
  letter_count[word.length] += 1
  end
  p letter_count
end

word_sizes('Four score and seven.')
word_sizes('Hey diddle diddle, the cat and the fiddle!')
word_sizes("What's up doc?")
word_sizes('')

