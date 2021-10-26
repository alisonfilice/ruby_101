=begin
Input -string
Ouput - string
Example
swap_name('Joe Roberts') == 'Roberts, Joe'
Data Structure - string
Algorithm
- set a new variable
- call on certain parts of the string and concantenate
=end

def swap_name(string)
array = string.split

"#{array[1]}, #{array[0]}"
end

swap_name('Joe Roberts')

