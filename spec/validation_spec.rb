require 'spec_helper'
require './lib/validation.rb'
require './lib/board.rb'

RSpec.describe Logic do
  let(:board) { Board.new(['b', 'b', 'b', 4, 5, 6, 7, 8, 9]) }
  describe 'valid_cell' do
    random_range = rand(0..8)
    it 'return true if player move is in range of 0 and 8' do
      expect(Logic.valid_cell?(random_range, board)).to eql(true)
    end
  end

  describe 'valid_cell' do
    it 'return false if player move is not in range of 0 and 8' do
      expect(Logic.valid_cell?(9, board)).to eql(false)
    end
  end

  describe 'empty_cell' do
    it 'return true if board cell data is in range of 1 and 9' do
      expect(Logic.empty_cell?(1, 2)).to be(true)
    end
  end

  describe 'empty_cell' do
    it 'return true if board cell data is not in range of 1 and 9' do
      expect(Logic.empty_cell?(0, 2)).to be(false)
    end
  end

  describe 'wining_row' do
    it 'return true if row of the cell is winning' do
      board = ['b', 'b', 'b', 4, 5, 6, 7, 8, 9]
      expect(Logic.wining_row?(board)).to be(true)
    end
  end

  describe 'wining_row' do
    it 'return false if row of the cell is not winning' do
      board = ['b', 'a', 'b', 4, 5, 6, 7, 8, 9]
      expect(Logic.wining_row?(board)).to_not be(true)
    end
  end

  describe 'wining_column' do
    it 'return true if column of the cell is winning' do
      board = ['a', 2, 3, 'a', 5, 6, 'a', 8, 9]
      expect(Logic.wining_column?(board)).to be(true)
    end
  end

  describe 'wining_column' do
    it 'return false if column of the cell is not winning' do
      board = ['a', 2, 3, 'b', 5, 6, 'a', 8, 9]
      expect(Logic.wining_column?(board)).to_not be(true)
    end
  end

  describe 'wining_diagonal' do
    it 'return true if diagonal cells are winning' do
      board = ['a', 2, 3, 'b', 'a', 6, 'b', 8, 'a']
      expect(Logic.wining_diagonal?(board)).to be(true)
    end
  end

  describe 'wining_diagonal' do
    it 'return false if any diagonal cell is not winning' do
      board = ['a', 2, 3, 'b', 'a', 6, 'b', 8, 'b']
      expect(Logic.wining_diagonal?(board)).to be(false)
    end
  end
end
