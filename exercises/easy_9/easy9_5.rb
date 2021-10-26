=begin
Input - string
Output - boolean (true/false)
Problem - Method returns true if all char in string are uppercase, and false otherwise.
Rules
- non-alpha letters ignored
Examples
Data Structures - Terenary
Algorithm
-upcase string and compare with string
- use ternary to return true / false
=end

def uppercase?(string)
string.upcase == string
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true