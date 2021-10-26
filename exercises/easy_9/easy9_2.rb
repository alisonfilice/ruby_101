=begin
# 2 'Double Doubles'
# Understand the problem
#   Explicit requirements:
#   - Input: an integer
#   - Output: an integer
#   - Additional considerations (about the problem, not the solution):
#   - returns 2x the number provided unless its a dbl number (return as is if dbl number)
#   -
#   Implicit requirements: none
#   Questions: what to do with leading zeros?; negative integers? floats? what to do with single digit integers?

# Examples and test cases:
#  twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

# Data structures:(stay abstract/ high level; avoid implementation detail; keeps from getting boxed in a particular approach)
# - an array of digits or digit strings.

# Algorithm:
# - identify if arg is a dbl number
  # - turn integer into a string
  # - turn string val into an array of its chars
  # - split array in half and rejoin elements into into a single object
  # - compare two halves for equivalency

# - if dbl number return as is
# - otherwise, multiply by 2 and return as integer
# -
# -
# -
# Code implementation:
#  (notes relevant to actual code; remember to code with intent--think about each line)
#
=end

def twice(integer)
  int = integer.to_s
  array_of_ints1 = int.chars
  ar_length = array_of_ints1.size
  array_of_ints2 = array_of_ints1.slice!(ar_length/2, ar_length/2)
  if array_of_ints1.join != array_of_ints2.join || ar_length == 1
    integer * 2
  else
    integer
  end
end

puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10