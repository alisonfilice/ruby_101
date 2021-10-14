#1. Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again. You may assume that the strings are of different lengths.

def short_long_short(string1, string2)
  if string1.length > string2.length
    puts string2 + string1 + string2
  else
    puts string1 + string2 + string1
  end
end

short_long_short('abc', 'defgh') #== "abcdefghabc"
short_long_short('abcde', 'fgh') #== "fghabcdefgh"
short_long_short('', 'xyz') #== "xyz"

#2. Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
#New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

#Input - integer year
#Output - string indicating century
#Algorithm
  #method 1 - identify the century based on the year
  #method 1 - determine last digit of year
  #method 2 - identify suffix that matches century from last digit
  # convert integer to string and use #end_with? method
  #method 3 add suffix to the end of the century
  #return
def century(year)
  if year < 101
    puts "1st"
  elsif year < 1001 && year > 100 && year.to_s.end_with?("0")
    puts year.to_s[0] + century_suffix(year)
  elsif (year < 1001 && year > 100) && (year.to_s.end_with?("0") == false)
    puts ((year.to_s[0]).to_i + 1).to_s + century_suffix(year)
  elsif year > 1000 && year.to_s.end_with?("0")
    puts year.to_s[0..-3] + century_suffix(year)
  elsif (year > 1000) && (year.to_s.end_with?("0") == false)
    puts ((year.to_s[0..-3]).to_i + 1).to_s + century_suffix(year)
  end
end

def century_suffix(century)
  if century.to_s.end_with?("1")
    "st"
  elsif century.to_s.end_with?("2")
    "nd"
  elsif century.to_s.end_with?("3")
    "rd"
  else
    "th"
  end
end

century(2000) #== '20th'
century(2001) #== '21st'
century(1965) #== '20th'
century(256) #== '3rd'
century(5) #== '1st'
century(10103) #== '102nd'
century(1052) #== '11th'
century(1127) #== '12th'
century(11201) #== '113th'

#3
def leap_year?(year)
  if year % 4 == 0 && year % 100 != 0
    puts true
  elsif year % 4 == 0 && year % 400 == 0
    puts true
  else
    puts false
  end
end

leap_year?(2016) #== true
leap_year?(2015) #== false
leap_year?(2100) #== false
leap_year?(2400) #== true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

puts "break"

#4.
def leap_year?(year)
  if year < 1752 && year % 4 == 0
    puts true
  elsif  year >= 1752 && year % 400 == 0
    puts true
  elsif year >= 1752 && year % 4 == 0 && year % 100 != 0
    puts true
  else
    puts false
  end
end

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

#5.
def multisum(num)
  array = []
  (1..num).each do |x|
    if x % 3 == 0 || x % 5 == 0
      array << x
    end
  end
  puts array.sum
end

multisum(20)
multisum(3) #== 3
multisum(5) #== 8
multisum(10) #== 33
multisum(1000) #== 234168

#6
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end

p running_total([2, 5, 13]) #== [2, 7, 20]
running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
running_total([3]) #== [3]
running_total([]) #== []

#7. Convert string to a number without to_i

def string_to_integer(string)
number_hash = { 
  '1'=> 1, '2'=> 2, '3'=> 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8'=> 8, '9'=> 9, '0'=> 0 
}
  int_array = string.chars.map { |chars| number_hash[chars] }
  
  value = 0
  int_array.each { |int| value = value * 10 + int}
  value
  
end   
  
string_to_integer('4321') == 4321
string_to_integer('570') == 570

#8. Convert a string to signed number
=begin
Input - string number, with leading +, -, or no leading
Output - correspdonding integer, with - sign if negative
Explicit Rules 
- no standard conversion methods
- no sign or + sign should return a positive number
- neg sign should return a negative number
Examples
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
Data Structure
Hash conversion for decimals and signs
Array
Algorithm
- make hash conversion for digits
- turn string into an array of characters
- if first array character is +, remove it
- do the same as last problem for positive numbers
  - iterate through array and calculate number
- for negative numbers remove first character
  - account for negative in calculation of integer
  - iterate through array and calculate number
=end
def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

#9. Convert a number to a string
=begin
Input - positive integer or zero
Output - string version of number
Explicit Rule - no standard methods
Examples 
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
Data Structure
Hash 
Array
Algorithm
- split numbers into an array of decimals
- make hash converting number to "string letter" (invert previous hash)
- iterate through decimals and assign string values
- join array
=end 

def integer_to_string(integer)
  
decimal_array = integer.digits.reverse

integer_keys = number_hash = { 
  '1'=> 1, '2'=> 2, '3'=> 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8'=> 8, '9'=> 9, '0'=> 0 
}.invert

decimal_array.map { |decimal| integer_keys[decimal]}
decimal_array.join

end 

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# Convert a signed number to a string

def signed_integer_to_string(integer)
  case integer <=> 0
  when -1 then integer_to_string(-integer).prepend("-")
  when +1 then integer_to_string(integer).prepend("+")
  else integer_to_string(integer)
  end
end 

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

