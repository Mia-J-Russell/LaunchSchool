VALID_CHOICES = %w(rock paper scissors lizard spock r p sc l sp)
WINNING = {
  'rock' => %w[scissors lizard],
  'scissors' => %w[paper lizard],
  'paper' => %w[rock spock],
  'lizard' => %w[spock paper],
  'spock' => %w[scissors rock]
}
PLAY_AGAIN = %w(y yes n no)
GAMES_TO_WIN = 5

def prompt(message)
  puts "=> #{message}"
end

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
  converted_choice[a_choice]
end

def win?(first, second)
  WINNING.has_key?(first) == WINNING.value?(second)
end

def display_results(user, computer)
  if win?(user, computer)
    prompt("You won!")
  elsif win?(computer, user)
    prompt("Sorry, you lost.")
  else
    prompt("It's a tie!")
  end
end

def match_ended?(user_score, comp_score)
  user_score == GAMES_TO_WIN || comp_score == GAMES_TO_WIN
end

prompt("Welcome to RPSLS. First to 5 becomes the grand champion!")

loop do
  user_score = 0
  comp_score = 0
  tie_score = 0

  loop do
    choices = get_move_choice

    computer_choice = VALID_CHOICES.sample
    converted_user = convert_choice(choices)
    converted_com = convert_choice(computer_choice)

    prompt("You chose: #{converted_user};" \
      " Computer chose: #{converted_com}")

    display_results(converted_user, converted_com)

    if win?(converted_user, converted_com)
      user_score += 1
    elsif win?(converted_com, converted_user)
      comp_score += 1
    else
      tie_score += 1
    end
    prompt("The score is: #{user_score} to #{comp_score} with" \
       " #{tie_score} ties!")

    break if match_ended?(user_score, comp_score)
  end

  system('clear')

  if user_score == GAMES_TO_WIN
    prompt("Congrats! You are the RPSLS grand winner!")
  else
    prompt("The computer is the winner, sorry!")
  end

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
