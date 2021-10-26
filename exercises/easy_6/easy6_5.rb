=begin
Input - array
Ouput - array
Problem - reverse elements in the array (but dont mutate the original)
Explicit Rules - cant use #reverse method
Implicit Rules -
Questions -
Examples/Test Cases -
Data Structure - array
Algorithm -
=end

def reverse(list)
  index = -1
  empty = []
  list.each do |el|
    empty.insert(index, el)
    index = index - 1
  end
  empty
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true