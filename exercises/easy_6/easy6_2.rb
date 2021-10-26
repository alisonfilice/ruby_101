=begin
Input - Array of strings
Output - Array of strings
Problem - review any vowel characters from the array and return
Explicit Rule - only vowels are removed (upper and lower case)
Implicit Rule - case sensitive, no special characters, spaces are not removed
Examples
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
Data Structure - Array
Algorithm
-iterate through the array
-select non-vowel characters to return
=end

def remove_vowels(array)
  array.map do |word|
  word.chars.select { |char| char =~ /[^aeiouAEIOU]/ }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']