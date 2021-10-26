=begin
Input - 3 integers
Ouput - string (letter grade)
Problem - average the 3 integers and determine the ltter grade
Explicit Rules - all scores will be between 0 - 100
Implicit Rules -
Questions - should i account for floats? rounding?
Examples/Test Cases -
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
Data Structure -
Algorithm -
- write a helper method to determine letter grade
  - case statement
- calculate mean score
- feed mean score to helper method
- output letter grade
=end

def grade_scale(mean_score)
  case mean_score
  when 0...60
    'F'
  when 60...70
    'D'
  when 70...80
    'C'
  when 80...90
    'B'
  when (90..)
    'A'
  end
end

def get_grade(int1, int2, int3)
  average = (int1 + int2 + int3) / 3
  grade_scale(average)
end

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
get_grade(100, 101, 200) == "A"