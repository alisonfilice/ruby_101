
#1. This prints out 1, 2, 2, 3, because .uniq is not mutable
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#2. Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

#what is != and where should you use it? (means not equal)
#put ! before something, like !user_name (is used to turn an object into their opposite)
#put ! after something, like words.uniq! (used to mutate the object / permanetely change)
#put ? before something (used in a terenary opperation a?b:c)
#put ? after something (to ask if something is true)
#put !! before something, like !!user_name (is used to turn something into their boolean equivlent)

#3 Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.gsub!('important', 'urgent')

#4. How do these two arrays differ?
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) #deletes at the index value
numbers.delete(1) #deletes integer 1

#5. Programmatically determine if 42 lies between 10 and 100.
#hint: Use Ruby's range object in your solution.
puts (10..100).cover?(42)

#6. show two different ways to put the expected "Four score and " in front of it.
famous_words = "seven years ago..."
puts "Four score and " + famous_words
puts famous_words.prepend("Four score and ")

#7. Un-nest this array
flintstones1 = ["Fred", "Wilma"]
flintstones1 << ["Barney", "Betty"]
flintstones1 << ["BamBam", "Pebbles"]

flintstones1.flatten!

#8. Turn this hash into an array containing two elements: Barney's name and number.
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney") # this method searches through the first element of an array and returns the match)
