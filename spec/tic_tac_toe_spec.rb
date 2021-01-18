# spec/tic-tac-toe_spec.rb
require '../lib/game_logic'

describe Board do
  let(:board) { Board.new }
  describe '#initialize' do
    it 'Creates the cells for the board' do
      expect(board.cells).to eql [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  end

  describe '#update_board' do
    it 'Successufully makes a new movement' do
      board.update_board 3, 'X'
      expect(board.cells).to eql [1, 2, 'X', 4, 5, 6, 7, 8, 9]
    end
  end

  describe '#winner' do
    it 'Checks if the player win' do
      board.update_board(1, 'X')
      board.update_board(2, 'X')
      board.update_board(3, 'X')
      expect(board.winner('X')).to eql true
    end
    it 'Checks if the player does not win' do
      board.update_board(1, 'X')
      board.update_board(2, 'O')
      board.update_board(3, 'X')
      expect(board.winner('X')).to eql false
    end
  end

  describe '#tie' do
    it 'Check if all cells are full' do
      board.update_board(1, 'X')
      board.update_board(2, 'O')
      board.update_board(3, 'X')
      board.update_board(4, 'O')
      board.update_board(5, 'O')
      board.update_board(6, 'X')
      board.update_board(7, 'X')
      board.update_board(8, 'X')
      board.update_board(9, 'O')
      expect(board.tie).to eql true
    end
  end
end

describe Game do
  let(:game) { Game.new }
  let(:board) { Board.new }
  describe 'verify_move' do
    it 'Checks if the input is a number' do
      expect(game.verify_move(1, 'X', board)).to eql true
    end
    it 'Checks if the input is not between 1 and 9' do
      expect(game.verify_move(0, 'X', board)).to eql false
    end
    it 'Checks if the cells is taken' do
      board.update_board 4, 'X'
      expect(game.verify_move(4, 'O', board)).to eql false
    end
  end
end
