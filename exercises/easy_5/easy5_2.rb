#2 After Midnight (part 1)
=begin
Input - pos or neg integer (representing time)
Ouput - string (showing hour : min time)
Explicit Rule
- before noon (integer is neg)
- after noon (integer is pos)
- can not use Date or Time class
Implicit Rule
- 0 is noon
Examples
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
Data Structure
- Array
Algorithm
- Evalute if integer is positive or neg
- Determine number of minutes at noon
  - subtract integer from num if negative
  - add integer if positive
- convert integer to mins and hours and convert to strings with colon

def time_of_day(integer)
  case integer <=> 0
  when -1 then 1440 + integer
  when +1 then 1440 - integer
  else integer
  end
end
=end
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(integer)
  if integer < 0

  else
  integer.divmod(60).join(":")
  end
end

time_of_day(0)
time_of_day(35)
time_of_day(800)
