=begin
Input - 2 arrays
Ouput - 1 array
Problem - elements at same index are multiplied
Explicit Rules - arrays have same num of elements
Implicit Rules -
Questions -
Examples/Test Cases -
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
Data Structure - array
Algorithm -
make an empty array
iterate through first array, multipling by index of second
return new array
=end

def multiply_list(array_1, array_2)
  empty_array = []
  array_1.each_with_index do |el, index|
    empty_array << el * array_2[index]
  end
end

def multiply_list(array1, array2)
  array1.zip(array2).map { |pair| pair.inject(&:*) }
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
