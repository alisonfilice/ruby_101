#1. In this has of people and their age, see if "Spot" is present.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.key?("Spot")
# Could also do .include?, member?

#2. Convert the string in the following ways (code will be executed on original munsters_description above):
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase! #this makes anything lowercase, uppercase; and vice versa
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!

#3. add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)

#4. See if the name "Dino" appears in the string below:
advice = "Few things in life are as important as house training your pet dinosaur."
advice.match?("Dino")
advice.include?("Dino")

#5. Show an easier way to write this array:
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
#flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#6. How can we add the family pet "Dino" to our usual array:
flintstones << "Dino"
# or .concat, .push

#7 How can you add multiple values to an array?
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item

#8. Shorten the following sentence
#Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

#As a bonus, what happens if you use the String#slice method instead?
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as")
#slice doesnt mutate the caller

#9. Write a one-liner to count the number of lower-case 't' characters in the following string:
statement = "The Flintstones Rock!"
statement.count('t')

#10. Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"
title.center(40)