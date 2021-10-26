=begin
Input - 2 integers (starting & ending)
Ouput - array of integers and strings
Problem - print list of integers, div 3 - swap fizz, div 5 - swap buzz, div 3 & 5 - swap fizzbuzz
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
Data Structure - array
Algorithm -
- set range with starting and ending integer
- iterate through range and print
- conditional for modulo for each integer
=end

def fizzbuzz(int1, int2)
  array = []
  (int1..int2).each do |num|
    if num % 3 == 0 && num % 5 != 0
      array << "Fizz"
    elsif num % 5 == 0 && num % 3 != 0
      array << "Buzz"
    elsif num % 5 == 0 && num % 3 == 0
      array << "FizzBuzz"
    else
      array << num
    end
  end
  p array.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
