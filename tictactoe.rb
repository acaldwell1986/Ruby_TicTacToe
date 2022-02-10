require 'io/console'
require 'io/wait'

def clear_stdin
  $stdin.getc while $stdin.ready?
end

class Board; end

module CheckWinner; end

def generate_board; end

def greeting
  puts 'Hello - Welcome to Ruby Tic Tac Toe!'
  sleep(1)
  puts "This game is command line only, you'll be expected to type your commands when prompted."
  $stdin.getch
  print "            \r"
  system 'clear'
  clear_stdin # clears STDIN so that no input carries over into player_selection method
end

def player_selection
  puts 'Would you like to play against a human or CPU player?'
  puts 'Press 1 for Human'
  puts 'Press 2 for CPU'

  # make this a loop
  selection = gets.chomp
  puts selection
  puts "Here #{selection}"
  sleep(1)
end

def goodbye
  sleep(0.5)
  puts 'Thanks for playing!'
  sleep(1)
  system 'clear' # purges console
  exit
end

# method for running the game
# commented out are the helper methods
def game
  greeting
  player_selection
  # symbol_selection
  # generate_board
  # start_play_loop
  goodbye
end

game