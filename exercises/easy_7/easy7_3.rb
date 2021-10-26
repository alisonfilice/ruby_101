=begin
Input - string
Ouput - string
Problem - change each word in the string to be lowercase except for first character
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
Data Structure - Array
Algorithm -
-split string into an array of words
-downcase words
-caplitalize words
-join words with a space
=end

def word_cap(string)
  array = string.split.map do |word|
    word.downcase.capitalize
  end
  array.join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

