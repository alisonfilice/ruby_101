=begin
Input - integer
Output - array of integers
Problem - return an array of integers starting with one and counting up by one and stops when it reaches the integer argument.
Rules - Argument will be an integer greater than 0
Examples
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
Data Structure - Array
Algorithm
- make an empty array
- set a counter to 1 and push to empty array
- stop counter when it equals the integer
=end

def sequence(number)
  (1..number).to_a
end

sequence(5) #== [1, 2, 3, 4, 5]
sequence(3) #== [1, 2, 3]
sequence(1) #== [1]