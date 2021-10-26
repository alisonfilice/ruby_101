=begin
Input - strings
Ouput - strings
Problem - prompt user for various words and put out a story
Explicit Rules -
Implicit Rules -
Questions -
Examples/Test Cases -
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly
Do you walk your blue dog quickly? That's hilarious!
Data Structure
Algorithm -
- Ask for words from user and assign to variables
- put words together using interpolation
=end

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb:"
verb = gets.chomp

puts "Enter a adjective:"
adjective = gets.chomp

puts "Enter a adverb:"
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"

