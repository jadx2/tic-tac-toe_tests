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

  def update_board(input, token)
    @cell[input - 1] = token
  end

  def verify_cell(input, _token)
    until input.match(/[ 1-9 ]/)
      puts 'Wrong move. Choose a number between 1 to 9'
      input = gets.chomp
    end
  end
end
