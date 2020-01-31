require 'pry'

SUITS = %w(H S C D)
VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
WINS = 5
TWENTYONE = 21

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
    sum += if value == 'A'
             11
           elsif value.to_i.zero?
             10
           else
             value.to_i
           end
  end

  values.select { |value| value == 'A' }.count.times do
    sum -= 10 if sum > TWENTYONE
  end
  sum
end

def busted?(cards)
  total(cards) > TWENTYONE
end

def display_result(dealer_cards, players_cards)
  player_total = total(players_cards)
  dealer_total = total(dealer_cards)

  if player_total > TWENTYONE
    :dealer
  elsif dealer_total > TWENTYONE
    :player
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def dealer_turn(dealer_cards, deck)
  puts '==================================='
  prompt "Dealer's turn..."
  prompt "Dealer's cards are: #{dealer_cards}"

  loop do
    break if total(dealer_cards) >= 17

    prompt 'Dealer hits!'
    dealer_cards << deck.pop
    prompt "Dealer's cards are now: #{dealer_cards}"
  end

  if busted?(dealer_cards)
    prompt "Dealer busted at #{total(dealer_cards)}"
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end
  sleep 5
  system 'clear'
end

def compare(dcards, pcards)
  puts '==================================='
  prompt "Dealer has #{dcards}, for a total of: #{total(dcards)}"
  prompt "Player has #{pcards}, for a total of: #{total(pcards)}"
  puts '==================================='
end

def play_again?
  puts '-----------------------------'
  answer = nil
  loop do
    prompt 'Do you want to play again? (y or n)'
    answer = gets.chomp
    break if %w(y n).include?(answer)
    prompt "That's not a valid response."
  end

  puts '---------------'
  answer.downcase.start_with?('y')
end

system 'clear'
prompt 'Welcome to Twenty-One! First to five wins!'

loop do
  player_score = 0
  dealer_score = 0
  ties = 0

  loop do
    deck = initialize_deck
    player_cards = []
    dealer_cards = []

    2.times do
      player_cards << deck.pop
      dealer_cards << deck.pop
    end

    prompt "The score is #{player_score} to #{dealer_score} with #{ties} ties."
    puts '==================================='
    prompt "Dealer has #{dealer_cards[0]} and ?"
    prompt "You have: #{player_cards[0]} and #{player_cards[1]}
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
      prompt "You busted with #{total(player_cards)}"
    else
      prompt "You stayed at #{total(player_cards)}"
    end

    sleep 3
    system 'clear'

    dealer_turn(dealer_cards, deck) if busted?(player_cards) == false

    compare(dealer_cards, player_cards)

    display_result(dealer_cards, player_cards)
    if display_result(dealer_cards, player_cards) == :dealer
      prompt "Dealer wins!"
      dealer_score += 1
    elsif display_result(dealer_cards, player_cards) == :player
      prompt "Player wins!"
      player_score += 1
    else
      prompt "It's a tie!"
      ties += 1
    end

    sleep 6
    system 'clear'
    break if dealer_score == WINS || player_score == WINS
  end

  system 'clear'
  prompt 'The final score is #{player_score} to' \
         ' #{dealer_score} with #{ties} ties.'
         binding.pry
  break unless play_again?
end

prompt 'Thanks for playing Twenty-One! Good bye!'
