require_relative "./board.rb"
class Logic

    def self.valid_move?(player_move, board)
        if board[player_move].to_i.between?(1, 10)
            return true
        else
            return false
        end
    end
end