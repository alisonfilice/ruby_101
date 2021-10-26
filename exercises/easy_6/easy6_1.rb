=begin
Input - float (angle)
Output - string (degrees, minutes, second)
Examples
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
Data Structure -
Algorithm
- assign degree variable = convert float into integer to determine degree and convert to a string
- find remainder of dividing float by integer to calc minutes and seconds and convert to strings
- concantinate numbers and symbols at the end
=end
DEGREE = "\xC2\xB0"

def dms(integer)
degree = integer.to_i
minutes = ((integer - degree) * 60).to_i
seconds = ((((integer - degree) * 60) - minutes) * 60).to_i

(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(76.73) == %(76°43'48")
dms(30) == %(30°00'00")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")