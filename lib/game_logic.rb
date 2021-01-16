class Board
  attr_reader :cells

  WIN_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze

  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    <<-HERDOC
                 #{@cells[0]} | #{@cells[1]} | #{@cells[2]}
                ---+---+---
                 #{@cells[3]} | #{@cells[4]} | #{@cells[5]}
                ---+---+---
                 #{@cells[6]} | #{@cells[7]} | #{@cells[8]}
    HERDOC
  end

  def update_board(input, symbol)
    if input == @cells[input - 1]
      @cells[input - 1] = symbol
    else
      false
    end
  end

  def winner(symbol)
    WIN_COMBO.any? do |combo|
      combo.all? { |item| @cells[item - 1] == symbol }
    end
  end

  def tie
    @cells.all? { |cell| %w[X O].include?(cell) }
  end
end

class Game
  def verify_move(input, symbol, board)
    if input.between?(1, 9) == false
      false
    elsif board.update_board(input, symbol) == false
      false
    else
      board.update_board(input, symbol)
      true
    end
  end
end
