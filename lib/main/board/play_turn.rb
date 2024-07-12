# Plays a complete round of Connect Four

module PlayTurn
  def play_turn
    #
  end

  def get_player_choice(symbol)
    puts "Player #{symbol}, please choose from columns A - G. A column cannot be chosen if it is full."
    choice = gets.chomp.upcase
    check_player_choice_valid(choice, symbol)
  end

  def check_player_choice_valid(choice, symbol)
    if choice == "A" && game_board[1].length < 7
      implement_player_choice(1, symbol)
    elsif choice == "B" && game_board[2].length < 7
      implement_player_choice(2, symbol)
    elsif choice == "C" && game_board[3].length < 7
      implement_player_choice(3, symbol)
    elsif choice == "D" && game_board[4].length < 7
      implement_player_choice(4, symbol)
    elsif choice == "E" && game_board[5].length < 7
      implement_player_choice(5, symbol)
    elsif choice == "F" && game_board[6].length < 7
      implement_player_choice(6, symbol)
    elsif choice == "G" && game_board[7].length < 7
      implement_player_choice(7, symbol)
    else
      get_player_choice(symbol)
    end
  end

  def implement_player_choice(row, symbol)
    game_board[row] << symbol
  end
end
