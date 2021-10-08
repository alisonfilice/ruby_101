def stringy(integer)
  numbers = []
  integer.times do |x|
  number = x.even? ? 1 : 0
  numbers << number
  end

puts numbers.join
end

stringy(11)

def average(array)
  array_length = array.length
  array.sum.to_f / array_length
end

average([1, 2, 3, 4])
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def sum(pos_integer)
  sum = 0
  array = pos_integer.to_s.chars

  array.each do |int|
    sum += int.to_i
  end
sum
end

puts sum(23)
puts sum(496) == 19
puts sum(123_456_789) == 45

def sum2(int)
  sum = 0
  array = int.to_s.chars

  for i in array do
    sum += i.to_i
  end
  sum
end

puts sum(23)
puts sum(496) == 19
puts sum(123_456_789) == 45

#Task - Calculate the bonus of a salary based on the boolean
#Input - 2 arguments (pos integer, boolean)
#Output - integer
#Test Cases
  #puts calculate_bonus(2800, true) == 1400
  #puts calculate_bonus(1000, false) == 0
  #puts calculate_bonus(50000, true) == 25000
#Data Structure
#Algorithm
#If / else statement

def calculate_bonus(salary, boolean)
  if boolean == true
    salary / 2
  elsif boolean == false
    0
  end
end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000



