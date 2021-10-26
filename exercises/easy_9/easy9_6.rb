=begin
Input - string
Ouput - array
Problem - out put an array that appends a space and word length for each word
Rules - any character that is not a space should be counted as part of the word length
- empty string will return an empty array
Examples
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

Data Structure - Array
Algorithm
- make an empty array
- turn string into an array of words
- iterate through array of words
- push the word + a space + the word length to the empty array
=end

def word_lengths(string)
empty_array = []
space = ' '
string.split.each do |word|
  empty_array << word + space + word.length.to_s
  end
p empty_array
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []