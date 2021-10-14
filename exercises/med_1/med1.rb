#4.
=begin
Problem:
  Input - 1 arguement (n = # of switches)
  Output - array (# of lights after n)
     n = number of repititions
  Questions - Is the number of lights the same as number of reps? (YES)
  Explicit Rules - num of lights = num of reps = num of switches, switches initially off
  Implicit Rules - each pass you toggle switches that are multiples of the pass num

Examples/test cases:
lights = 5, then [1, 4]
lights = 10, then [1, 4, 9]

Data structure: Hash

Algortihm:
1. Convert argument to hash. Numbers are the keys and values are the state (on/off). All keys are off.
2. Each round in rounds
  2.1 Flip the switches by multiple of the round number

=end

def switches(number)
  array = []
  hash = Hash.new
  (1..number).each do |key|
    hash[key] = 0
  end
  #hash.each do |key, value|
  #if key % num == 0
  (1..number).each do |num|
    hash.map do |key, value|
      if key % num == 0
        if value == 0
          hash[key] = 1
        elsif value == 1
          hash[key] = 0
        end
      end
    end
  end
  hash.values.each_with_index { |num, index| array << index + 1 if num == 1 }
  p array
end

p switches(5) == [1, 4]
p switches(10) == [1, 4, 9]