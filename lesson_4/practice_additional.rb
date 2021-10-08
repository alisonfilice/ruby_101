flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.sum {|key, value| value}

total_ages = 0
ages.each {|name, age| total_ages += age}
total_ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.select! do |names, ages|
  ages < 100
end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
  flintstones.index { |name| name =~ /Be/}

#index method tells you the index number of the array that satisfies the conditions in the block

flintstones.map { |name| name[3..]}
#this removes the first 3 letters from each elment
flintstones.map! { |name| name[0,3] }
#this removes the just prints the first three elments

statement = "The Flintstones Rock"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_freq = statement.count(letter)
  result[letter] = letter_freq if letter_freq > 0
end
#This counts the number of instances of each char in the array and creates a hash

words = "the flintstones rock"
words = words.split.map do |word|
  word.capitalize
end
words.join(' ')

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, age_group|
case age_group["age"]
when 0..17
  age_group["age_group"] = "kid"
when age = 18..64
  age_group["age_group"] = "adult"
else
  age_group["age_group"] = "senior"
end
end