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
      true
    elsif choice == "B" && game_board[2].length < 7
      true
    elsif choice == "C" && game_board[3].length < 7
      true
    elsif choice == "D" && game_board[4].length < 7
      true
    elsif choice == "E" && game_board[5].length < 7
      true
    elsif choice == "F" && game_board[6].length < 7
      true
    elsif choice == "G" && game_board[7].length < 7
      true
    else
      get_player_choice(symbol)
    end
  end
end
