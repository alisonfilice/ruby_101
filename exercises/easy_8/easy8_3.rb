=begin
Input - string
Ouput - array
Problem - output first character plus the next and so on as seperate words in an array
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
Data Structure - Array
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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']