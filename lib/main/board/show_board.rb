# Puts the current board-state in the terminal.

module ShowBoard
  def show_board
    a1 = game_board[1][1] || " "
    a2 = game_board[1][2] || " "
    a3 = game_board[1][3] || " "
    a4 = game_board[1][4] || " "
    a5 = game_board[1][5] || " "
    a6 = game_board[1][6] || " "
    b1 = game_board[2][1] || " "
    b2 = game_board[2][2] || " "
    b3 = game_board[2][3] || " "
    b4 = game_board[2][4] || " "
    b5 = game_board[2][5] || " "
    b6 = game_board[2][6] || " "
    c1 = game_board[3][1] || " "
    c2 = game_board[3][2] || " "
    c3 = game_board[3][3] || " "
    c4 = game_board[3][4] || " "
    c5 = game_board[3][5] || " "
    c6 = game_board[3][6] || " "
    d1 = game_board[4][1] || " "
    d2 = game_board[4][2] || " "
    d3 = game_board[4][3] || " "
    d4 = game_board[4][4] || " "
    d5 = game_board[4][5] || " "
    d6 = game_board[4][6] || " "
    e1 = game_board[5][1] || " "
    e2 = game_board[5][2] || " "
    e3 = game_board[5][3] || " "
    e4 = game_board[5][4] || " "
    e5 = game_board[5][5] || " "
    e6 = game_board[5][6] || " "
    f1 = game_board[6][1] || " "
    f2 = game_board[6][2] || " "
    f3 = game_board[6][3] || " "
    f4 = game_board[6][4] || " "
    f5 = game_board[6][5] || " "
    f6 = game_board[6][6] || " "
    g1 = game_board[7][1] || " "
    g2 = game_board[7][2] || " "
    g3 = game_board[7][3] || " "
    g4 = game_board[7][4] || " "
    g5 = game_board[7][5] || " "
    g6 = game_board[7][6] || " "

    board = <<~END

      | #{a6} #{b6} #{c6} #{d6} #{e6} #{f6} #{g6} |
      | #{a5} #{b5} #{c5} #{d5} #{e5} #{f5} #{g5} |
      | #{a4} #{b4} #{c4} #{d4} #{e4} #{f4} #{g4} |
      | #{a3} #{b3} #{c3} #{d3} #{e3} #{f3} #{g3} |
      | #{a2} #{b2} #{c2} #{d2} #{e2} #{f2} #{g2} |
      | #{a1} #{b1} #{c1} #{d1} #{e1} #{f1} #{g1} |
      =-=-=-=-=-=-=-=-=
        A B C D E F G
    END
    puts board
  end
end

# string_version = some_bool ? "yes" : "no"
