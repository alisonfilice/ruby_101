=begin
Input - nested array
Ouput - array
Problem - convert quantities to the correct number of each fruit
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
Data Structure - Hash?
Algorithm -
- convert nested array to hash
- make an empty array
- iterate through hash
 - put each key the number of times of its value into the empty array
=end
def buy_fruit(nested_array)
  empty_array = []
  nested_array.to_h.each do |fruit, num|
    num.times { empty_array << fruit }
  end
  empty_array
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]