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

  def verify_token(move)
    until move.match(/[ 1-9 ]/)
      puts 'Wrong move. Choose a number between 1 to 9'
      move = gets.chomp
    end
  end
end
