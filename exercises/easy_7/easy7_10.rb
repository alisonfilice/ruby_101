=begin
Input - string
Ouput - string
Problem - returns next to last word in a string
Explicit Rules - words are sequences of non-blank charaters; input at least 2 words
Implicit Rules -
Questions -
Examples/Test Cases -
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
Data Structure - Array
Algorithm -
- split string into an array of words
- call on second to last word by index value
=end

def penultimate(string)
  string.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
