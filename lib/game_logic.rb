class Board
  attr_reader :cells

  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    puts <<-HERDOC
                 #{@cells[0]} | #{@cells[1]} | #{@cells[2]}
                ---+---+---
                 #{@cells[3]} | #{@cells[4]} | #{@cells[5]}
                ---+---+---
                 #{@cells[6]} | #{@cells[7]} | #{@cells[8]}
    HERDOC
  end

  def update_board(input, symbol)
    @cells[input.to_i - 1] = symbol
  end

  def verify_move(input, symbol)
    cell_value = input.to_i - 1
    if input.to_i > 9 || input.to_i < 1
      puts "Choose between 1 and 9"
    elsif @cells[cell_value] == "X" || @cells[cell_value] == "O"
      puts "Space already taken. Try again"
    else
      update_board(input, symbol)
    end
  end
end

class Result
  WIN_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

  def winner(player, input)
    player1 = []
    player2 = []
  end
end
