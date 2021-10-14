##1. Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
#array = []
#
#puts '==> Enter the 1st number:'
#array << gets.chomp
#
#puts '==> Enter the 2nd number:'
#array << gets.chomp
#
#puts '==> Enter the 3rd number:'
#array << gets.chomp
#
#puts '==> Enter the 4th number:'
#array << gets.chomp
#
#puts '==> Enter the 5th number:'
#array << gets.chomp
#
#puts '==> Enter the last number:'
#last_number = gets.chomp
#
#if array.include?(last_number)
#  puts "The number #{last_number} appears in #{array}."
#else
#  puts "The number #{last_number} DOES NOT appear in #{array}."
#end

#2. Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.
def prompt(text)
  puts "=>> #{text} "
end

prompt("Enter the first positive number:")
first_number = gets.chomp.to_f

prompt("Enter the second positive number:")
second_number = gets.chomp.to_f

sum = first_number + second_number
subtraction = first_number - second_number
mult = first_number * second_number
div = (first_number / second_number).round(2)
rem = first_number.remainder(second_number)
power = first_number ** second_number

prompt("#{first_number} + #{second_number} = #{sum}")
prompt("#{first_number} - #{second_number} = #{subtraction}")
prompt("#{first_number} * #{second_number} = #{mult}")
prompt("#{first_number} / #{second_number} = #{div}")
prompt("#{first_number} % #{second_number} = #{rem}")
prompt("#{first_number} ** #{second_number} = #{power}")

#3 Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.
puts "Type one or more words."
input = gets.chomp

characters = input.split.join.length

puts "There are #{characters} characters in \"#{input}\"."

#4. Create a method that takes two arguments, multiplies them together, and returns the result.
def multiply(num1,num2)
  num1 * num2
end

multiply(2, 3)
multiply([1,2,3], 2)

#5. Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).
def square(n)
  multiply(n,n)
end

square(3)

def power(num, power)
  multiply(num, 1)**power
end

power(2,3)

def xor?(arg1,arg2)
  if arg1 == true && arg2 == false
    return true
  elsif arg2 == true && arg1 == false
  return true
  else
  return false
  end
end

xor?(5.even?, 4.even?)
xor?(5.odd?, 4.odd?)
xor?(5.odd?, 4.even?)
xor?(5.even?, 4.odd?)

#Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.
def oddities(array)
  counter = 0
  even_indexes = []
  loop do
  break if counter > array.size
  even_indexes << array[counter]
  counter += 2
  end
  return even_indexes
end

my_array = [1, 2, 3, 4, 5, 6]
puts oddities(my_array)

#Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') #== true
palindrome?('Madam') #== false          # (case matters)
palindrome?("madam i'm adam") #== false # (all characters matter)
palindrome?('356653') #== true

def array_palindrome?(array)
  array == array.reverse
end

array_palindrome?([1, 2, 3, 4])

def palindrome_all?(object)
  object == object.reverse
end

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

real_palindrome?('madam') #== true
real_palindrome?('Madam') #== true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
real_palindrome?('356653') #== true
real_palindrome?('356a653') #== true
real_palindrome?('123ab321') #== false

def palindromic_number?(integers)
  integers.to_s == integers.to_s.reverse
end 


