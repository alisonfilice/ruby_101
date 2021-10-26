#starting deck
cards = [%w(H 1), %w(H 2), %w(H 3), %w(H 4), %w(H 5), %w(H 6), %w(H 7), %w(H 8), %w(H 9), %w(H 10), %w(H J), %w(H Q), %w(H K), %w(H A),
%w(D 1), %w(D 2), %w(D 3), %w(D 4), %w(D 5), %w(D 6), %w(D 7), %w(D 8), %w(D 9), %w(D 10), %w(D J), %w(D Q), %w(D K), %w(D A),
%w(C 1), %w(C 2), %w(C 3), %w(C 4), %w(C 5), %w(C 6), %w(C 7), %w(C 8), %w(C 9), %w(C 10), %w(C J), %w(C Q), %w(C K), %w(C A),
%w(S 1), %w(H 2), %w(S 3), %w(S 4), %w(S 5), %w(S 6), %w(S 7), %w(S 8), %w(S 9), %w(S 10), %w(S J), %w(S Q), %w(S K), %w(S A)]

player_cards = []
dealer_cards = []

def first_hand()

def prompt(message)
  puts "=> #{message}"
end
#method for calculating cards in hand
def total(cards)
  values = cards.map { |card| card[1] }
  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i == 0 #J, Q, K
      sum += 10
    else
      sum += value.to_i
    end

    values.select { |value| value == 'A' }.count.times do
      sum -= 10 if sum > 21
    end

    sum
end

#method to determine if over 21
def busted?(score)
  total(cards) > 21 ? true : false
end
#game loop

#player turn
loop do
  puts "Welcome to the game 21!"


answer = nil
loop do
  puts "Do you want to 'hit' or 'stay'?"
  answer = gets.chomp
  break if answer == 'stay' || busted?
end

if busted?
  puts "Sorry, you went over 21 and busted. Would you like to play again?" # mark the end of the game or ask user if they want to play again
else
  puts "You chose to stay!"
end

#dealer turn
answer = nil
loop do
  prompt "Do you want to 'hit' or 'stay'?"
  answer = gets.chomp
  break if answer == 'stay' || busted?
end

if busted?
  prompt "Sorry, you went over 21 and busted. Would you like to play again?" # mark the end of the game or ask user if they want to play again
else
  prompt "You chose to stay!"
end
