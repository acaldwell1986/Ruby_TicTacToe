require 'io/console'
require 'io/wait'

# Class to generate boards.
class Board
  @boards = 0

  def initialize
    @board = [
      ['-', '-', '-'],
      ['-', '-', '-'],
      ['-', '-', '-']
    ]

    @boards =+ 1
  end

  def give_board
    @board
  end

  def number_of_boards
    @boards
  end
end

module CheckWinner; end

def greeting
  puts 'Hello - Welcome to Ruby Tic Tac Toe!'
  sleep(1)
  puts "This game is command line only, you'll be expected to type your commands when prompted."
  puts 'Press Any key to continue.'
  $stdin.getch
  print "            \r"
  system 'clear'
  clear_stdin # clears STDIN so that no input carries over into player_selection method
end

def clear_stdin
  $stdin.getc while $stdin.ready?
end

def player_selection
  puts 'Would you like to play against a human or CPU player?'
  puts 'Press 1 for Human'
  puts 'Press 2 for CPU'
  selection = 0
  while selection != '1' && selection != '2' do
    selection = gets.chomp
  end
  sleep(1)
  system 'clear'
  selection
end

def goodbye
  sleep(0.5)
  puts 'Thanks for playing!'
  sleep(1)
  system 'clear' # purges console
  exit
end

def symbol_selection
  puts 'What symbol would you like to use? (X or O)'
  puts 'Press X or O to select.'
  selection = ''
  while selection.upcase != 'X' && selection.upcase != 'O' do
    selection = gets.chomp.upcase
  end
  sleep(1)
  selection
end

def print_board(display_board)
  puts '     |     |     '
  puts "  #{display_board[0][0]}  |  #{display_board[0][1]}  |  #{display_board[0][2]}  "
  puts "_____|_____|_____"
  puts '     |     |     '
  puts "  #{display_board[1][0]}  |  #{display_board[1][1]}  |  #{display_board[1][2]}  "
  puts "_____|_____|_____"
  puts '     |     |     '
  puts "  #{display_board[2][0]}  |  #{display_board[2][1]}  |  #{display_board[2][2]}  "
  puts '     |     |     '
end

# method for running the game
# commented out are the helper methods
def game
  greeting
  player_type = player_selection
  symbol_type = symbol_selection
  board = Board.new
  print_board(board.give_board)
  p board.number_of_boards
  # start_play_loop
  # goodbye
end

game
