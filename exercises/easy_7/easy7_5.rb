=begin
Input - string
Ouput - string
Problem - stagger alpha chars as upcase/downcase based on index value, do not change non-alpha chars.
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
Data Structure - Array
Algorithm -
- turn string into an array of chars
- if the chars index value is even and the char is a letter change to upcase
- if the char index calue is odd and the char is a letter change to downcase
- otherwise no change
- join and return array
=end

def staggered_case(string)
  array = string.chars.map.with_index do |char, index|
    if index.even? && char.match(/[a-zA-Z]/)
      char.upcase
    elsif index.odd? && char.match(/[a-zA-Z]/)
      char.downcase
    else
      char
    end
  end
  p array.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

