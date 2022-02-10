require 'io/console'
require 'io/wait'

def clear_stdin
  $stdin.getc while $stdin.ready?
end

class Board; end

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

def generate_board
  board = [
    ['-', '-', '-'],
    ['-', '-', '-'],
    ['-', '-', '-']
  ]
  
  board.each_with_index do |row, row_index|
    row.each_with_index do |value, column_index|
      p "Row:#{row_index} Column:#{column_index} && value = #{value}"
    end
  end

  sleep(5)
end

# method for running the game
# commented out are the helper methods
def game
  greeting
  player_type = player_selection
  symbol_type = symbol_selection
  generate_board
  # start_play_loop
  # goodbye
end

game
