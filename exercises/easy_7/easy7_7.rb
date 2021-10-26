=begin
Input - array of integers
Ouput - integer
Problem -multiplies all the numbers together,
divides the result by the number of entries in the Array,
and then prints the result rounded to 3 decimal places
Explicit Rules - no empty arrays
Implicit Rules -
Questions -
Examples/Test Cases -
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
Data Structure - Array
Algorithm -
- set a varible for the final integer equal to...
- iterate through array and multiply by the previous number
- divide the variable by size of the array
- round the variable
=end

def show_multiplicative_average(array)
    variable = 1
    array.map do |int|
        variable = int.to_f * variable
    end
    p format('%.3f', (variable / array.size))
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

