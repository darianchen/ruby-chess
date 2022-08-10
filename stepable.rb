module Stepable

    moves = []

    
def moves
    # create array to collect moves

    # iterate through each of the piece's possible move_diffs
      # for each move_diff, increment the piece's position to generate a new position
      # add the new position to the moves array if it is:
        # on the board and empty, 
        # OR on the board and contains a piece of the opposite color

    # return the final array of moves
    
    valid_moves = []
       dx, dy = self.pos
      move_diffs.each do |move| #[3,4]
       if board[pos] != NullPiece || board[pos] == Piece.color != self.color
        valid_moves << move
       end
      end
      valid_moves
    end

  end

  private
    def move_diffs
        raise NotImplementedError
    end 
end

