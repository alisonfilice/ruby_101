=begin
Input - integer
Ouput - integer
Problem - reverse digits of integer, disregard leading zeros
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
Data Structure - array
Algorithm -
- divide intger into digits array
- reverse digits
- join array
=end
def reversed_number(int)
  p int.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
