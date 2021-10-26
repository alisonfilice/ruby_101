=begin
Input - string
Ouput - string
Problem - swap lowercase and uppercase letters without using #swapcase
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
Data Structure - Array
Algorithm -
- split string into characters
- iterate through
- ID upcase and switch to downcase and vice versa
- join characters
- return string
=end

def swapcase(string)
  array = string.chars
  array.map! do |char|
    if char.match(/[a-z]/)
      char.upcase
    elsif char.match(/[A-Z]/)
      char.downcase
    else
      char
    end
  end
  array.join
end

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
