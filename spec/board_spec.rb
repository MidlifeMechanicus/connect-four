# spec/board_spec.rb
require "./lib/main/board"

describe Board do
  describe "#initialize" do
    it "has a gameboard array of 9 empty arrays'" do
      board = Board.new
      expect(board.game_board).to eq([[], [], [], [], [], [], [], [], []])
    end
  end

  describe "#fill_board_edges" do
    it "fills first entry of each element with 'empty', as well as first and last column" do
      board = Board.new
      board.fill_board_edges
      expect(board.game_board).to eq([%w[edge edge edge edge edge edge edge], ["edge"], ["edge"], ["edge"], ["edge"], ["edge"], ["edge"],
                                      ["edge"], %w[edge edge edge edge edge edge edge]])
    end
  end
end
