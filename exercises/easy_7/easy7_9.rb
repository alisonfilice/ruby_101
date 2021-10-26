=begin
Input - 2 arrays
Ouput - 1 array
Problem - new array is product of all pairs that can occur, sorted
Explicit Rules - no empty arrays
Implicit Rules - no floats
Questions -
Examples/Test Cases -
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
Data Structure - Array
Algorithm -
=end

def multiply_all_pairs(array_1, array_2)
  empty_array = []
  array_1.each do |el|
    index = 0
    until index == array_2.size
    empty_array << (el * array_2[index])
    index += 1
    end
  end
  empty_array.sort
end

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]