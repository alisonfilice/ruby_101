=begin
Input - array
Ouput - integer
Problem - sum the preceeding numbers
Explicit Rules - array always contains at least 1 num
Implicit Rules -
Questions -
Examples/Test Cases -
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
Data Structure - Array
Algorithm -
- iterate through array adding the preceeding numbers
- add together sums
=end

def sum_of_sums(array)
  sums = []
  sum_set = 0
  array.each do |int|
    sums << (sum_set = int + sum_set)
  end
  sums.inject(:+)
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35