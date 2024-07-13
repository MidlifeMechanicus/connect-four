require_relative "main/board"

# Will need game board to display current state
# will need nputs from players
# will need to update game board
# will need to check for winners
# loop through player turns until winner is found or no spaces remain (42 total moves possible)
#
# how to define winning? 4 in a row, but cannot list all possible cases; must detect. How? use nodes with connections? recursive trees?
# board = array of arrays
# array filled with nodes? what about transform?

board = Board.new
board.play_game
