=begin
Input - 2 arrays
Ouput - 1 array
Problem - combine two arrays, alternating the elements, starting with first array
Explicit Rules -
-both arrays are not empty and have same number of elements
Implicit Rules -
-elements can be integers or arrays
Questions -
Examples/Test Cases -
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
Data Structure - Array
Algorithm -
- make an array
- permanetely select the first element of each array and move to empty array
=end

def interleave (arr_1, arr_2)
  empty = []
  total = arr_1.size + arr_2.size
  until empty.size == total
  empty << arr_1.slice!(0)
  empty << arr_2.slice!(0)
  end
  p empty
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']