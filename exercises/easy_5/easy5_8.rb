=begin
Alphebetical Numbers
Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:
zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Input - Array of integers between 0-19
Output - Array of integers
Example
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
Algorithm
- Make a hash with integers and their names
- Compare array of integers to the hash, and remove hash key/values that don't match array
- sort the hash based on the name values and return just the values.
=end
INTEGER_NAMES = {
0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five",
6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 11=> 'eleven',
12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def alphabetic_number_sort(array)
array.map! { |int| INTEGER_NAMES[int] }
array.sort!
array.map! { |word| INTEGER_NAMES.key(word)}
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0]

p alphabetic_number_sort((1..4).to_a)