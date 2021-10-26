=begin
Input - array
Ouput - array
Problem - find any words that are anagrams (same letters, different order) and print them
Explicit Rules -
Implicit Rules -
Questions - does case matter? spaces? special characters?
Examples/Test Cases -
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
Data Structure -
- make an empty array
- turn each word into an array of charcters that are sorted, which will make a nested array
- iterate through the nested array
 - set index to 0
 - compare each array to the array at the index, if they match, sendit to the empty array
 - print out empty array
Algorithm -
=end
def words(array)
  empty = []
  array.each do |word1|
    array.each do |word2|
      empty << word2 if word1.chars.sort == word2.chars.sort
    end
    p empty
    empty = []
  end
  end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words(words)