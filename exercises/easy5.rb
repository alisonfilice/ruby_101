#def swap(string)
#  words = string.split(' ').map { |word| word.chars }
#  array = []
#  reordered_words = words.map do |word|
#    if word.size > 2
#      array << word.fetch(-1)
#      word.delete_at(=1)
#      word << word
#      word.delete_at(0)
#    else
#      word.reverse
#    end
#  end
#  reordered_words.map { |x| x.join }
#  reordered_words.join
#end
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


