
VALID_CHOICES = %w(rock paper scissors lizard spock r p sc l sp)

def prompt(message)
  puts "=> #{message}"
end

#had problems getting the move choice to work
def get_move_choice
choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
end

def convert_choice(a_choice)
  converted_choice = {
    "r" => "rock",
    "p" => "paper",
    "sc" => "scissors",
    "l" => "lizard",
    "sp" => "spock",
    "rock" => "rock",
    "paper" => "paper",
    "scissors" => "scissors",
    "lizard" => "lizard",
    "spock" => "spock"
  }
  converted_choice["#{a_choice}"]
end

#problems with converting user choice it seems like?
choices = get_move_choice
computer_choice = VALID_CHOICES.sample
converted_user = convert_choice(choices)
converted_com = convert_choice(computer_choice)

puts converted_user
puts converted_com

#prompt("You chose: #{converted_user};" \
#  " Computer chose: #{converted_com}")
