=begin
Input - array
Ouput - array
Problem - mutate an array so that it is permantey reversed
Explicit Rules - can't use the reverse method
Implicit Rules -
Questions -
Examples/Test Cases -
Data Structure - array
Algorithm -
-
=end
def reverse!(array)
  dup_array = array.dup
  array.map! { |el| dup_array.pop }
  p array

end

reverse!([1,2,3,4])


list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true