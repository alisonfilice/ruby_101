#4 Letter Swap (did this one with wolf)
def swap(string)
words = string.split(' ').map { |word| word.chars }
  words.map do |word|
  word.append(word.first)
  word.delete_at(0)
  word.prepend(word[-2])
  word.delete_at(-2)
  end

words.map! do |word|
  word.join
  end

if words.size > 1
  words.join(" ")
else
  words
end
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')

