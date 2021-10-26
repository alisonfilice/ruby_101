def negative(integer)
integer.abs == integer && integer != 0 ? -integer : integer
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
