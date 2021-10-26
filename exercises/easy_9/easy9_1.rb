=begin
Input - array & hash
Ouput - string
Problem - take information from array and hash to produce a greeting
Rules -
Examples
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.
Data Structure - string
Algorithm
-call on different parts of the array using index and the hash with key
=end

def greetings(array, hash)
  name = array.join(" ")
  job = hash[:title] hash[:occupation]
  "Hello, #{name}! Nice to have a #{job} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
