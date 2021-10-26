=begin
Input - integer
Ouput - integer (index value)
Problem - calculate and return the index value of the first Fibonacci number that has the number of digits in the argument
Rule 
- the sequence start with 1, 1...
- the next two number is  the sum of the previous two
-argument is always greater or equal to 2
Examples 
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
Data Structure - Array
Algorithm
- calculate fibonacci sequence and create an array
- iterate through array
- convert each value to a string
- and pull the first value whose length equals the argument 
- convert to integer
=end 

def find_fibonacci_index_by_length(integer)
fib_array = [1, 1]
counter = 2
 loop do
   number = fib_array[counter - 1] + fib_array[counter - 2]
   fib_array << number
   break if number.to_s.length == integer
   counter +=1
  end 
fib_array.size
end 

find_fibonacci_index_by_length(2) 
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
   
   
   
 
