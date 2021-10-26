=begin
Input - array & search value
Ouput - boolean
Problem - returns true if search value is found in array
Explicit Rules - can't use #include?
Implicit Rules -
Questions -
Examples/Test Cases -
Data Structure - array
Algorithm -
- iterate through array
- if any of the elements is the same as the search value return true
- if not return false
=end

def include?(array, value)
  p array.any? { |el| el == value }
end


include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false