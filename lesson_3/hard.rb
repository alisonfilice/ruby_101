#1 What will happen to the greeting variable?.
if false
  greeting = "hello world"
end

greeting
# it will return nil because, the variable was initialized in the in the if/end block (so it is not undefined), but it wasn't used so it comes up as nil

#2. What is the result of the last line in the code below?
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings #{:a=>"hi there"} informal_greeting (and therefore greetings) is mutated with the use of <<

#3.Reassignment inside a method never changes outer scope variables, so everything that happens in the method has no effect whatsoever on the final result, because variables are not mutated by the reassignment."
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" #one
puts "two is: #{two}" #two
puts "three is: #{three}" #three

#4. Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."
#Help Ben fix his code.
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
