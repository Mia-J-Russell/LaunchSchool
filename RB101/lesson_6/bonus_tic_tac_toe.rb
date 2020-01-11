require 'pry'

CHOOSE = ['player', 'computer']
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 5], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(message)
  puts "=> #{message}"
end

def joinor(arr, default = ', ', lastword = 'or')
  case arr.length
  when 0 then ''
  when 1 then arr.first\
  when 2 then arr.join(" #{lastword} ")
  else
    arr[-1] = "#{lastword} #{arr.last}"
    arr.join(default)
  end
end

def turn_choice
  return CHOOSE.sample
end
# rubocop:disable Metrics/AbcSize
def display_board(brd, playscore, comscore, tie)
  system 'clear'
  prompt "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  prompt "First to 5 wins."
  prompt "The score is #{playscore} to #{comscore} with #{tie} ties."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "That's not a valid choice."
  end

  brd[square] = PLAYER_MARKER
end

def immediate_threat?(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select{ |k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = immediate_threat?(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = immediate_threat?(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square && empty_squares(brd).include?(5)
    square = 5
  end

  if !square
    square = empty_squares(brd).sample
  end

    brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winnner(brd)
end

def detect_winnner(brd)
  WINNING_LINES.each do |line|
    #  if brd[line[0]] == PLAYER_MARKER &&
    #     brd[line[1]] == PLAYER_MARKER &&
    #     brd[line[2]] == PLAYER_MARKER
    #    return 'Player'
    #  elsif brd[line[0]] == COMPUTER_MARKER &&
    #        brd[line[1]] == COMPUTER_MARKER &&
    #        brd[line[2]] == COMPUTER_MARKER
    #    return 'Computer'
    #  end
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_score = 0
computer_score = 0
ties = 0

prompt "Welcome to TicTacToe. First to five wins!"
loop do
  loop do
    board = initialize_board
    turnorder = nil

    loop do
      loop do
        prompt "Would you like to go first, the computer to go first, " +
        "or to randomly select who goes first."
        prompt "(player or computer or random)"
        turnorder = gets.chomp
        if turnorder.downcase.start_with?('p', 'c', 'r')
          break
        else
          prompt "That's not a valid choice."
        end
      end
      display_board(board, player_score, computer_score, ties)

      if turnorder.downcase.start_with?('r')
        turnorder = turn_choice
      end

      if turnorder.downcase.start_with?('p')
        loop do
          display_board(board, player_score, computer_score, ties)

          player_places_piece!(board)
          break if someone_won?(board) || board_full?(board)

          computer_places_piece!(board)
          break if someone_won?(board) || board_full?(board)
        end
      elsif turnorder.downcase.start_with?('c')
        loop do
          computer_places_piece!(board)
          break if someone_won?(board) || board_full?(board)
          display_board(board, player_score, computer_score, ties)

          player_places_piece!(board)
          break if someone_won?(board) || board_full?(board)
        end
      end
      break
    end

    display_board(board, player_score, computer_score, ties)

    if someone_won?(board)
      if detect_winnner(board) == 'Computer'
        computer_score += 1
      elsif detect_winnner(board) == 'Player'
        player_score += 1
      end
    else
      prompt "It's a tie!"
      ties += 1
    end

    break if computer_score == 5 || player_score == 5

  end

  prompt "The final score is #{player_score} to #{computer_score} with #{ties} ties"
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
prompt "Thanks for playing! Good bye!"
