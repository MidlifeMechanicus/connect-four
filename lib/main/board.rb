# Holds nodes for gameplay.
require_relative "board/show_board"
require_relative "board/play_turn"

class Board
  attr_accessor :game_board, :turn_count, :winner

  def initialize
    @game_board = Array.new(9) { [] }
    @turn_count = 0
    @winner = false
  end

  include ShowBoard
  include PlayTurn
end
