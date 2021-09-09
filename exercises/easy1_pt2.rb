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
  puts array.sum.to_f / array_length
end

average([1, 2, 3, 4])



  
  
