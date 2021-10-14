=begin
Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
=end
require 'pry'

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup(string)
  array = []

  string.chars.map do |char|
    if ALPHABET.include?(char)
      array << char
    elsif ' '.include?(char)
      array << char
    end
  end
  array.join
end

def word_sizes(string)
  letter_count = Hash.new(0)
  cleanup(string).split.map do |word|
  letter_count[word.length] += 1
  end
  p letter_count.sort.to_h
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
