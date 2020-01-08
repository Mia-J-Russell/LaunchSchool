require 'pry'

SUITS = %w(H S C D)
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def total(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == 'A'
      sum += 11
    elsif value.to_i.zero?
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def display_result(dealer_cards, players_cards)
  player_total = total(players_cards)
  dealer_total = total(dealer_cards)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def play_again?
  puts '---------------'
  prompt 'Do you want to play again? (y or n)'
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  prompt 'Welcome to Twenty-One!'

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  2.times do
    player_cards << deck.pop
    dealer_cards << deck.pop
  end

  prompt "Dealer has #{dealer_cards[0]} and ?"
  prompt "You have: #{player_cards} and #{player_cards[1]}
          for a total of #{total(player_cards)}"

  loop do
    player_turn = nil
    loop do
      prompt 'Would you like to (h)it or (s)tay?'
      player_turn = gets.chomp.downcase
      break if %w(h s).include?(player_turn)

      prompt "Sorry, you must enter 'h' or 's'."
    end

    if player_turn == 'h'
      player_cards << deck.pop
      prompt 'You chose to hit!'
      prompt "Your cards are now: #{player_cards}"
      prompt "Your total is now: #{total(player_cards)}"
    end

    break if player_turn == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
  end

  prompt "Dealer's turn..."

  loop do
    break if total(dealer_cards) >= 17

    prompt 'Dealer hits!'
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer's total is now: #{total(dealer_cards)}"
    display_result(dealer_cards, player_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  puts '==============='
  prompt "Dealer has #{dealer_cards}, for a total of: #{total(dealer_cards)}"
  prompt "Player has #{player_cards}, for a total of: #{total(player_cards)}"
  puts '==============='

  display_result(dealer_cards, player_cards)

  break unless play_again?
end

prompt 'Thanks for playing Twenty-One! Good bye!'
