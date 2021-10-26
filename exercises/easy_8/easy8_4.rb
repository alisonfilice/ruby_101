=begin
Input - string
Ouput - array
Problem -
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
Data Structure - array
Algorithm -
=end
def leading_substrings(string)
  array = []
  str_set = ''
  string.chars.each do |char|
    array << (str_set = char + str_set).reverse
  end
  array
end

def substrings(string)
final_array = []
(0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    final_array << leading_substrings(this_substring)
  end
final_array.flatten
end


p substrings('abcde')
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]