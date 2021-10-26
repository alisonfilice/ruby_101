=begin
Input - string
Ouput - string
Problem - return the middle character(s) of a string
Explicit Rules - no empty strings
Implicit Rules -
Questions -
Examples/Test Cases -
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
Data Structure - string
Algorithm -
- make an empty string
- divide the string in half
- call on the characters by index value using a conditional statement based on string size
- return new string
=end

def center_of(string)
middle_chars = ''
string_length = string.size / 2
    if string.size.odd?
        middle_chars << string[string_length]
    else
        middle_chars << string[string_length - 1] << string[string_length]
    end
p middle_chars
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'