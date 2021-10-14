=begin
Input- string
Output- string
Example -
cleanup("---what's my +*& line?") == ' what s my line '
Data Structure - Array
Algorithm
- turn string into an array of characters
- identify and replace non-alphanumeric charcters with a space
- remove more than 1 space in a row
=end
ALPHABET = ('a'..'z').to_a

def cleanup(string)
  array = []

  string.chars.each do |char|
    if ALPHABET.include?(char)
      array << char
    else
      array << " " unless array.last == ' '
  end
  end
  p array.join
end

cleanup("---what's my +*& line?") == ' what s my line '