=begin
Input - string
Ouput - string
Problem - double only consonate letters
Explicit Rules - dont double vowels, numbers, other characters or spaces
Implicit Rules - not case sensative
Questions -
Examples/Test Cases -
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
Data Structure - array
Algorithm -
- add conditional - must be a letter (upper & lower case), but not a vowel
=end

def double_consonants(string)
empty_string = ''
string.chars.each do |char|
  if char =~ /[a-zA-Z]/ && char =~ /[^aeiouAEIOU]/
    empty_string << char * 2
  else
    empty_string << char
  end
  end
p empty_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
