=begin
Input - 2 Integers
Ouput - Array of integers
Problem -
Rule - if count is 0, and empty array is returned, no neg numbers
- starting num can be neg, count 0 or greater
Examples
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
Data Structure = array
Agorithm
- empty array
- loop counting up from starting number by starting num until array size equals count
- conditional if count is 0
=end

def sequence(count, first_num)
  array = []
  multiplier = 1
  if count != 0
    until array.size == count
    array << first_num * multiplier
    multiplier += 1
    end
  end
  array
end

sequence(5, 1)