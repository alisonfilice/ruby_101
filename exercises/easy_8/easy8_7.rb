=begin
Input - string
Ouput - string
Problem - double each character in the string
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
Data Structure -  string
- make an empty string
- iterate through the string multipling each char by 2 and send to new string
- return new string
Algorithm -
- make an empty string
- iterate through the string multipling each char by 2 and send to new string
- return new string
=end

def repeater(string)
empty_string = ''
string.chars.each do |char|
  empty_string << char * 2
end
p empty_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''