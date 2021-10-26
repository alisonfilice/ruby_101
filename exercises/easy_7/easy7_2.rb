=begin
Input - string
Ouput - hash
Problem - return the uppercase, lowercase, and neither characters in the string as 3 different values in the hash
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
Data Structure - array, Hash
Algorithm -
- make an empty hash
- turn string into array
- iterate through array
- match upcase, lowcase, neither characters to keys and values sending to empty hash
- return hash
=end

def letter_case_count(string)
hash = {lowercase: 0, uppercase: 0, neither: 0}
array = string.chars
array.each do |x|
  if x.match(/[a-z]/)
    hash[:lowercase] += 1
  elsif x.match(/[A-Z]/)
    hash[:uppercase] += 1
  else
    hash[:neither] +=1
  end
  end
hash
end

letter_case_count('abCdef 123') #== { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }