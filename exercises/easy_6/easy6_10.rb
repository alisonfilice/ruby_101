=begin
Input - integer
Ouput - picture
Problem - make a right angle out of stars. 2 sides # of stars = the integer
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
triangle(5)

    *
   **
  ***
 ****
*****
Data Structure - puts statements
Algorithm -
- row 1 - puts 1 star
- row 2 - star + 1
- keep going until integer is met for rows and columns
- adjust for aligning left

=end
def triangle(int)
  index = 1
  until index > int
  puts (" " * (int - index))  + ("*" * index)
  index += 1
  end
end

triangle(5)