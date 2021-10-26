=begin
Input - 1 array
Ouput - 2 nested arrays
Problem - split the first array into two arrays to make a nested array
Explicit Rules - odd num arrays, should place middle num in first array
Implicit Rules -
Questions -
Examples/Test Cases -
Data Structure - array
Algorithm -
- make an empty array
- if array is odd, remove first half values + 1 and place into new array
- if array is even, remove first half values and place into new array
- add two arrays to empty array
- return empty array
=end

def halvsies(array)
  middle = array.size/2
  if array.size.even?
    first_half = array.slice(0, middle)
    second_half = array.slice(middle, array.size - middle)
  else
    first_half = array.slice(0, middle + 1)
    second_half = array.slice(middle + 1, array.size - (middle + 1))
  end
  p [first_half, second_half]
end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
