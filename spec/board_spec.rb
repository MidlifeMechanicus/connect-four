# spec/board_spec.rb
require "./lib/main/board"

describe Board do
  describe "#initialize" do
    context "a new game board has been created" do
      board = Board.new
      it "has a gameboard array of 9 empty arrays'" do
        expect(board.game_board).to eq([[], [], [], [], [], [], [], [], []])
      end
      it "has turn count of zero" do
        expect(board.turn_count).to be 0
      end
      it "has no winner" do
        expect(board.winner).to be false
      end
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

  describe "#check_player_choice_valid" do
    context "a new game board has been created" do
      board = Board.new
      it "finds choice A to be valid" do
        expect(board.check_player_choice_valid("A", "X")).to be true
      end
      it "should call 'get_player_choice' with appropriate arguments" do
        expect(board).to receive(:get_player_choice).with("X")
        board.check_player_choice_valid("AA", "X")
      end
    end
  end
end
