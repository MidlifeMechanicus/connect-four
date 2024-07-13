# Holds nodes for gameplay.
require_relative "board/show_board"
require_relative "board/play_turn"

class Board
  attr_accessor :game_board, :winner, :winning_player

  def initialize
    @game_board = Array.new(7) { [] }
    @winner = false
    @winning_player = nil
  end

  def play_game
    21.times do
      play_turn
      break if winner == true
    end
    show_board
    puts final_message
  end

  def final_message
    winner ? "Congratulations, Player #{winning_player} won!" : "The game is over, it's a tie!"
  end

  include ShowBoard
  include PlayTurn
end
