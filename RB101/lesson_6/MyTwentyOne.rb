require 'pry'

SUITS = ['H', 'S', 'C', 'D']
VALUE = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
CONVERSION = {'H' => 'Hearts',
              'S' => 'Spades',
              'C' => 'Clubs',
              'D' => 'Diamonds',
              '2' => 'Two',
              '3' => 'Three',
              '4' => 'Four',
              '5' => 'Five',
              '6' => 'Six',
              '7' => 'Seven',
              '8' => 'Eight',
              '9' => 'Nine',
              '10' => 'Ten',
              'J' => 'Jack',
              'Q' => 'Queen',
              'K' => 'King',
              'A' => 'Ace'}
PLAY_AGAIN = %w(y yes n no)

def prompt(message)
  puts "=> #{message}"
end

#deals the cards randomly without repeats
def deal_card(cards)
  deal = []
  loop do
    deal << SUITS.sample
    deal << VALUE.sample
    break if !cards.include?(deal)
  end
  cards = deal
end

#makes the cards readable
#got a bit ambitious with this, doesn't work
=begin
def converted_cards(cards)
  suits = cards.map {|card| card[0]}
  values = cards.map {|card| card[1]}

  converted = [[]]
  counter = 0

  while cards.length > counter
    converted[counter[counter]] << CONVERSION[suits[counter]]
    converted[counter[counter + 1]] << CONVERSION[values[counter]]
    counter += 1
  end
  converted
end
=end

#if the sum of the cards are over 21, the person busts
def busted?(cards)
  values = cards.map {|card| card[1]}

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select {|value| value == "A"}.count.times do
    sum -= 10 if sum >21
  end

  if sum > 21
    return true
  else
    return false
  end
end

#if the dealer has 17 or greater he should stay
def dealer_stay?(cards)
  values = cards.map {|card| card[1]}

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select {|value| value == "A"}.count.times do
    sum -= 10 if sum >21
  end

  if sum >= 17
    return true
  else
    return false
  end
end

#calculates the sum of the cards and if Ace should be 1 or 11
def calculate_ace(cards)
  values = cards.map {|card| card[1]}

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select {|value| value == "A"}.count.times do
    sum -= 10 if sum >21
  end
  sum
end

#compares scores to determine winner
#doesn't work when someone busts as it takes the higher number.
def winner?(playcards, comcards)
  if playcards > comcards
    return "Player wins!"
  elsif comcards > playcards
    return "Computer wins!"
  else
    return "It's a tie!"
  end
end

loop do
  system ('clear')
  #player move
  players_cards = []
  answer = nil
  loop do
    counter = 0
    players_cards << deal_card(players_cards)
    converted_player = converted_cards(players_cards)
    prompt "Your cards are: #{players_cards}"
    #the ambitious converted cards
    =begin
    while converted_player.length > counter do
      prompt "#{converted_player[counter][counter + 1]} of #{converted_player[counter][counter]}"
      counter += 1
    end
    =end
    break if busted?(players_cards)
    prompt "Hit or stay?"
    answer = gets.chomp
    break if answer.downcase == 'stay'
  end

  if busted?(players_cards)
    prompt "You busted!"
  else
    prompt "You chose to stay!"
  end

  #dealer's move
  computer_cards = []
  loop do
    break if dealer_stay?(computer_cards) || busted?(computer_cards)
    computer_cards << deal_card(computer_cards)
    prompt "Dealer's cards are: #{computer_cards}"
  end

  if busted?(computer_cards)
    prompt "Dealer busted!"
  else
    prompt "Dealer chose to stay"
  end

  prompt "#{winner?(calculate_ace(players_cards), calculate_ace(computer_cards))}"

#ask user if they want to play again
  replay = ''
  loop do
    prompt("Would you like to play again?")
    prompt(PLAY_AGAIN.to_s)
    replay = gets.chomp.downcase

    if PLAY_AGAIN.include?(replay)
      break
    else
      prompt("That's not a valid option.")
    end
  end
  break unless replay == 'y' || replay == 'yes'
end

prompt("Thanks for playing!")
