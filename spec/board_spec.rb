require 'spec_helper'
require './lib/board.rb'

RSpec.describe Board do
  describe 'Functionality of #initialize' do
    let(:board) { Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9]) }
    let(:player_one) { Board.new }
    let(:player_two) { Board.new }
    # let(:board) { Board.new(:player_one, :player_two, :board) }
    let(:current_player) { :player_one }

    describe '#initialize' do
      it 'should initialize as an instance of Board class' do
        expect(board.class).to eql(Board)
      end
      it 'initialize the board with a grid' do
        expect { Board.new(board: 'board') }.to_not raise_error
      end
    end
  end

  describe '#display_board' do
    board = Board.new([])
    it 'returns the grid of string if correct position is passed' do
      expect(board.display_board(3, 'x')).to be_instance_of(String)
    end
  end
end
