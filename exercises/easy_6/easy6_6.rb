=begin
Input - array
Ouput - array
Problem - combine two arrays, delete any duplicates
Explicit Rules -
Implicit Rules -
Questions - should values be in order
Examples/Test Cases -
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
Data Structure - array
Algorithm -
 - push values from both arrays into a new array
 - delete duplicates
=end

def merge (array1, array2)
    new_array = []
    array1.each { |el| new_array << el }
    array2.each { |el| new_array << el }
    p new_array.sort.uniq
end

def merge2(arr1, arr2)
    p (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]