# spec/board_spec.rb
require "./lib/main/board"

describe Board do
  describe "#initialize" do
    context "a new game board has been created" do
      board = Board.new
      it "has a gameboard array of 9 empty arrays'" do
        expect(board.game_board).to eq([[], [], [], [], [], [], []])
      end
      it "has turn count of zero" do
        expect(board.turn_count).to be 0
      end
      it "has no winner" do
        expect(board.winner).to be false
      end
    end
  end

  describe "#check_player_choice_valid" do
    context "a new game board has been created" do
      board = Board.new
      it "should call #implement_player_choice with appropritate arguments" do
        expect(board).to receive(:implement_player_choice).with(2, "O")
        board.check_player_choice_valid("C", "O")
      end
      it "should call #get_player_choice with appropriate arguments" do
        expect(board).to receive(:get_player_choice).with("X")
        board.check_player_choice_valid("AA", "X")
      end
      it "should call #get_player_choice with appropriate arguments when chosen row is full" do
        6.times do
          board.game_board[5] << "X"
        end
        expect(board).to receive(:get_player_choice).with("X")
        board.check_player_choice_valid("F", "X")
      end
    end
  end

  describe "#implement_player_choice" do
    it "should push symbol to appropriate row of @game_board" do
      board = Board.new
      board.implement_player_choice(4, "X")
      expect(board.game_board[4][0]).to eq("X")
    end
  end

  describe "#check_winner" do
    it "should not detect a winner on a fresh board" do
      board = Board.new
      board.check_winner
      expect(board.winner).to be false
    end

    it "should detect a winner when four of the same symbol are in a row" do
      board = Board.new
      counter = 1
      4.times do
        board.game_board[counter] << "X"
        counter += 1
      end
      board.check_winner
      expect(board.winner).to be true
    end

    it "should detect a winner when four of the same symbol are in a column" do
      board = Board.new
      4.times do
        board.game_board[3] << "O"
      end
      board.check_winner
      expect(board.winner).to be true
    end

    it "should detect a winner when four of the same symbol form a rising diagonal" do
      board = Board.new
      board.game_board[2].push("X")
      board.game_board[3].push("O", "X")
      board.game_board[4].push("O", "O", "X")
      board.game_board[5].push("O", "O", "O", "X")
      board.check_winner
      expect(board.winner).to be true
    end

    it "should detect a winner when four of the same symbol form a falling diagonal" do
      board = Board.new
      board.game_board[5].push("X")
      board.game_board[4].push("O", "X")
      board.game_board[3].push("O", "O", "X")
      board.game_board[2].push("O", "O", "O", "X")
      board.check_winner
      expect(board.winner).to be true
    end
  end
end
