class Logic
  def self.valid_cell?(player_move, _board)
    case player_move
    when 0..8
      true
    else
      false
    end
  end

  def self.empty_cell?(player_move, board)
    board_data = board[player_move]
    case board_data
    when 1..9
      true
    else
      false
    end
  end

  def self.wining_row?(board) # rubocop:todo Metrics/PerceivedComplexity
    if board[0] == board[1] && board[1] == board[2] ||
       board[3] == board[4] && board[4] == board[5] ||
       board[6] == board[7] && board[7] == board[8]
      return true
    end
    false
  end

  def self.wining_column?(board) # rubocop:todo Metrics/PerceivedComplexity
    if board[0] == board[3] && board[3] == board[6] ||
       board[1] == board[4] && board[4] == board[7] ||
       board[2] == board[5] && board[5] == board[8]
      return true
    end
    false
  end

  def self.wining_diagonal?(board)
    if board[0] == board[4] && board[4] == board[8] ||
       board[2] == board[4] && board[4] == board[6]
      true
    else
      false
    end
  end
end
