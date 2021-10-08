##1. Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.
#
#teddys_age = rand(20..200)
#puts "Teddy is #{teddys_age} years old!"
##the range must be passed to the rand method as an argument.
#
#
##2. Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
##Note: 1 square meter == 10.7639 square feet
##Do not worry about validating the input at this time.
#
#puts "What is the length of the room in meters?"
#length = gets.chomp.to_f
#puts "What is the width of the room in meters?"
#width = gets.chomp.to_f
#
##you must convert the user input to an integer(or float), because all user input comes in as a string, even numbers
#
#area_meters = (length * width).round(2)
#area_feet = (area_meters * 10.7639).round(2)
#
##one of the integers is converted to a float so that the variable calculated can be a float
#
#puts "The areaof the room is #{area_meters} square meters (#{area_feet} square feet)."
#
#
##3. Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.
#
#puts 'What is the bill amount?'
#bill = gets.chomp.to_f
#
#puts 'What the tip percentage?'
#tip_rate = (gets.chomp.to_f) / 100
#
#tip = (bill * tip_rate).round(2)
#
#total_bill = (bill + tip).round(2)
#
#puts "The tip is $#{tip}"
#puts "The total bill is $#{total_bill}"
#
##4. Build a program that displays when the user will retire and how many years she has to work till retirement.
#puts "What is your age?"
#age = gets.chomp.to_i
#
#puts "At what age would you like to retire?"
#retirement_age = gets.chomp.to_i
#
#current_year = Time.now.year
#years_to_go = retirement_age - age
#
#retirement_year = current_year + years_to_go
#
#
#puts "It's #{current_year}. You will retire in #{retirement_year}."
#puts "You only have #{years_to_go} years to go!"
#
##5. Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.
#puts "What is your name?"
#name = gets.chomp
#
#  if name[-1] == !
#    name = name.chop
#    puts "HELLO #{name}. WHY ARE YOU SCREAMING?"
#  else
#    puts "Hello #{name}."
#  end
#
##6. Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
#(1..99).each do |x|
#  if x.odd?
#    puts x
#  end
#end
#puts (1..99).to_a.select{|num| num.odd?}
#
##7. Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.
#counter = 1
#loop do
#  if counter.even?
#  puts counter
#  end
#  counter += 1
#break if counter > 99
#end
#
#8. Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

user_integer = nil

loop do
  puts "Please enter an integer greater than 0:"
  user_integer = gets.chomp
  if user_integer.to_i > 0 && user_integer.to_i.to_s == user_integer
    user_integer = user_integer.to_i
    break
  else
  puts "Error, you must enter a positive integer(whole number). Try again"
  end
end


 loop do
 puts "Enter 's' to compute the sum, 'p' to compute the product."
 user_choice = gets.chomp.downcase

 sum = 0
 product = 0

   if user_choice == "s"
     sum = (1..user_integer).sum
     puts "The sum of the integers between 1 and #{user_integer} is #{sum}."
   break
   elsif user_choice == "p"
     product = (1..user_integer).inject { |mult, num| mult *= num }
     puts "The product of the integers between 1 and #{user_integer} is #{product}."
   break
   else
     puts "Sorry, that is an invalid answer, please enter 's' or 'p'."
   end
 end

#9. What does this print out?
name = 'Bob'
  name.object_id
save_name = name
  name.object_id
  save_name.object_id
name.upcase!
  name.object_id
  save_name.object_id
puts name, save_name





