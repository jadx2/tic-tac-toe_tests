#spec/tic-tac-toe_spec.rb
require '../lib/game_logic.rb'

describe Board do
  let(:board) = Board.new
  describe '#initialize' do
    it 'Creates the cells for the board' do
      expect(board.cells).to eql [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end
  end

  describe '#update_board' do	
    # it 'Checks if the cells' do
    
    # end
    it 'Successufully makes a new movement' do
      board.update_board 3, 'X'
      expect(board.cells).to eql [1, 2, 'X', 4, 5, 6, 7, 8, 9]
    end
    it 'Successufully makes a new movement' do
      board.update_board 5, 'X'
      board.update_board 6, 'O'
      expect(board.cells).to eql [1, 2, 3, 4, 'X', 'O', 7, 8, 9]
    end
	
  end
end

# describe '#verify_move' do
# 	it 'Checks if the input is a valid number' do
# 		Game.verify_move 3, 'X', 
# 	end
	
# end




# it 'Checks if the input is valid number' do
		
# end