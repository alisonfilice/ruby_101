#1. For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
10.times { |num| puts (" " * num) + "The Flintstones Rock!"}

#2. Why is there an error and what are two ways to fix it.
#puts "the value of 40 + 2 is " + (40 + 2) #the problem is to be concatenated with a string, the integer must be converted to a string or interpolated.
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

#3.Alan wrote the following method, which was intended to show all of the factors of the input number:
# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.
def factors(number)
  divisor = number
  factors = []

  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
factors
end

puts factors(11)
puts factors(0)

#4. What is the difference between using << or + in adding an element?
#<< mutates the caller
#+ does not mutate the caller

#15. What is wrong with limit in this code?
#limit = 15 (was not in the variable's scope, had to be moved inside the variable)

def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#6. What is the output?
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#output is 34. answer is not used by this method.

#7. What gets passed to a method isn't the value of the object. Unless the variable/hash/array is reassigned the data will change as a result of the mthod.

#8. Here is the method
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

#Method calls can take expressions as arguments. What is the result of:
puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
#Paper, just follow the parantheses

#9. What would be the return value of this?
def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

#essentially it works out to bar(yes) = which is false (meaning no)
# yes, a method can be passed to a method