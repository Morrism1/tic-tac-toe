require_relative "./board.rb"
class Logic

    def self.valid_move?(player_move, board)
        if board[player_move].to_i.between?(1, 10)
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

    def self.draw?(board)
        # board.each do |n|
        #     if n.to_i.between?(1, 10)
        #         return false
        #     else
        #         return true
        #     end
        # end
        if board =~ /[1-9]/
            return false
        else
            return true
        end
    end

end