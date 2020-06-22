require_relative "./board.rb"
class Logic

    def self.valid_cell?(player_move, board)
        case player_move
        when 0..8
            return true
        else
            return false
        end
    end

    def self.empty_cell?(player_move, board)
        board_data = board[player_move] 
        case board_data
        when 1..9
            return true
        else
            return false
        end
    end

    def self.game_defined?(board)
        if board[0] == board[1] && board[1] == board[2]
            return true
        elsif board[3] == board[4] && board[4]== board[5]
            return true
        elsif board[6] == board[7] && board[7] == board[8]
            return true
        elsif board[0] == board[3] && board[3] == board[6]
            return true
        elsif board[1] == board[4] && board[4] == board[7]
            return true
        elsif board[2] == board[5] && board[5] == board[8]
            return true
        elsif board[0] == board[4] && board[4] == board[8]
            return true
        elsif board[2] == board[4] && board[4] == board[6]
            return true
        else
            return false
        end
    end
end