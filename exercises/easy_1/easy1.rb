def repeat(string, integer)
  integer.times do
    puts string
  end
end

repeat('Hello', 3)

def is_odd?(num)
  num.abs % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

def digit_list(int)
  int.to_s.chars.map { |num| num.to_i}
end

p digit_list(1234)

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  counts = Hash.new 0

  array.uniq.each do |word|
    counts[word] = array.count(word)
  end

counts.each do |word, number|
  puts "#{word} => #{number}"
  end
end

count_occurrences(vehicles)

def reverse_sentence(string)
  puts string.split.reverse.join(' ')
end

reverse_sentence("I love you!")

def reverse_words(phrase)
  words = []

  phrase.split.each do |w|
    w.reverse! if w.length >= 5
    words << w
  end

  puts words.join(' ')
end
reverse_words("My name is alison")
