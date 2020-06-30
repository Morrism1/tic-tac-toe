require 'spec_helper'
require './lib/validation.rb'
require './lib/board.rb'

RSpec.describe Logic do
    let(:board) { Board.new([1, 2, 3, 4, 5, 6, 7, 8, 9]) } 
    describe 'valid_cell' do
        random_range = rand(0..8)
        it 'return true if player move is in range of 0 and 8' do
            expect(Logic.valid_cell?(random_range,board)).to eql(true)
        end
    end

    describe 'valid_cell' do
        it 'return false if player move is not in range of 0 and 8' do
            expect(Logic.valid_cell?(9,board)).to eql(false)
        end
    end

    describe 'empty_cell' do
        it 'return true if board cell data is in range of 1 and 9' do
            expect(Logic.empty_cell?(1,2)).to be(true)
        end
    end

    describe 'valid_cell' do
        it 'return true if board cell data is not in range of 1 and 9' do
            expect(Logic.empty_cell?(0,2)).to be(false)
        end
    end


end
