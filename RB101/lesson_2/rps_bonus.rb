VALID_CHOICES = %w(rock paper scissors lizard spock)
OTHER_VALID_CHOICES = %w(r p sc l sp)
WINNING = {
  'rock' => %w[scissors lizard],
  'scissors' => %w[paper lizard],
  'paper' => %w[rock spock],
  'lizard' => %w[spock paper],
  'spock' => %w[scissors rock]
}
PLAY_AGAIN = %w(y yes n no)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  WINNING[first].include?(second)
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

loop do
  user_score = 0
  comp_score = 0
  tie_score = 0

  loop do
    choice = ''
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')} or " \
       "#{OTHER_VALID_CHOICES.join(', ')}")
      choice = gets.chomp.downcase

      if VALID_CHOICES.include?(choice) ||
         OTHER_VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample
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

    prompt("You chose: #{converted_choice[choice]};" \
      " Computer chose: #{computer_choice}")

    display_results(converted_choice[choice], computer_choice)

    if win?(converted_choice[choice], computer_choice)
      user_score += 1
    elsif win?(computer_choice, converted_choice[choice])
      comp_score += 1
    else
      tie_score += 1
    end
    prompt("The score is: #{user_score} to #{comp_score} with" \
       " #{tie_score} ties!")

    break if user_score == 5 || comp_score == 5
  end

  if user_score == 5
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
