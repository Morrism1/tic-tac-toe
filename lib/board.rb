class Board
    attr_writer
    attr_reader :board

    def initialize(board)
        @board = board
    end

    def self.display_board(board)
        puts "#{board[0]} | #{board[1]} | #{board[2]}"
        puts '---------'
        puts "#{board[3]} | #{board[4]} | #{board[5]}"
        puts '---------'
        puts "#{board[6]} | #{board[7]} | #{board[8]}"
    end

    def player_move
    end
end