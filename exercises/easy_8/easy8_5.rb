=begin
Input - string
Ouput - array
Problem - identify all the palindromes in a string
Explicit Rules - case counts, single characters aren't palindrome, use substrings method
Implicit Rules - characters count
Questions -
Examples/Test Cases -
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
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

def palindromes(string)
  palindromes = []
  substrings(string).each do |sub_str|
    if sub_str == sub_str.reverse && sub_str.size > 1
      palindromes << sub_str
    end
    end
  p palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
