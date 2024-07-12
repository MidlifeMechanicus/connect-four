# Holds nodes for gameplay.

class Board
  attr_accessor :game_board

  def initialize
    @game_board = Array.new(9) { [] }
  end

  def fill_board_edges
    game_board.each do |element|
      element << "edge"
    end
    6.times do
      game_board[0] << "edge"
      game_board[8] << "edge"
    end
  end
end
