=begin
Input - string
Ouput - string
Problem - return string with any consecutive duplicate characters removed.
Rules - You can't use squeeze
Examples
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
Algorithm
- Iterate through string
- delete any characters that match the previous character
=end

def crunch(string)
  crunched_string = ''
  array = string.chars

  for x in array
    crunched_string << x unless x == crunched_string.chars.last
  end
crunched_string
end

p crunch('ddaaiillyy ddoouubbllee')
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

