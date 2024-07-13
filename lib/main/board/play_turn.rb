# Plays a complete round of Connect Four

module PlayTurn
  def play_turn
    unless winner == true
      show_board
      get_player_choice("X")
    end
    check_winner
    unless winner == true
      show_board
      get_player_choice("O")
    end
    check_winner
  end

  def get_player_choice(symbol)
    puts "Player #{symbol}, please choose from columns A - G. A column cannot be chosen if it is full."
    choice = gets.chomp.upcase
    check_player_choice_valid(choice, symbol)
  end

  def check_player_choice_valid(choice, symbol)
    if choice == "A" && game_board[0].length < 6
      implement_player_choice(0, symbol)
    elsif choice == "B" && game_board[1].length < 6
      implement_player_choice(1, symbol)
    elsif choice == "C" && game_board[2].length < 6
      implement_player_choice(2, symbol)
    elsif choice == "D" && game_board[3].length < 6
      implement_player_choice(3, symbol)
    elsif choice == "E" && game_board[4].length < 6
      implement_player_choice(4, symbol)
    elsif choice == "F" && game_board[5].length < 6
      implement_player_choice(5, symbol)
    elsif choice == "G" && game_board[6].length < 6
      implement_player_choice(6, symbol)
    else
      get_player_choice(symbol)
    end
  end

  def implement_player_choice(row, symbol)
    game_board[row] << symbol
  end

  def check_winner
    game_board.each_with_index do |column, i|
      column.each_with_index do |entry, j|
        # This test checks for a horizontal left-to-right win.
        if game_board[i + 1][j] == entry &&
           game_board[i + 2][j] == entry &&
           game_board[i + 3][j] == entry
          self.winner = true
          self.winning_player = entry
        # This test checks for a vertical bottom-to-top win.
        elsif game_board[i][j + 1] == entry &&
              game_board[i][j + 2] == entry &&
              game_board[i][j + 3] == entry
          self.winner = true
          self.winning_player = entry
        # This test checks for a rising left-to-right diagonal win.
        elsif game_board[i + 1][j + 1] == entry &&
              game_board[i + 2][j + 2] == entry &&
              game_board[i + 3][j + 3] == entry
          self.winner = true
          self.winning_player = entry
        # This test checks for a falling left-to-right diagonal win.
        elsif game_board[i - 1][j + 1] == entry &&
              game_board[i - 2][j + 2] == entry &&
              game_board[i - 3][j + 3] == entry
          self.winner = true
          self.winning_player = entry
        end
      end
    end
  end
end
