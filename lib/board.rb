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

    def self.player_move(player_selection)
        player_selection = gets.chomp
        player_selection_to_i = player_selection.to_i
        player_move = player_selection_to_i - 1
        return player_move
    end
end