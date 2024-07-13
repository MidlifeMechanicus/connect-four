# Holds nodes for gameplay.
require_relative "board/show_board"
require_relative "board/play_turn"

class Board
  attr_accessor :game_board, :turn_count, :winner, :winning_player

  def initialize
    @game_board = Array.new(7) { [] }
    @turn_count = 0
    @winner = false
    @winning_player = nil
  end

  def play_game
    21.times do
      play_turn
      break if winner == true
    end
    show_board
    # winner == true ?
  end

  include ShowBoard
  include PlayTurn
end
