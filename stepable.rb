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
    
    new_pos = []
       dx, dy = self.pos
      move_diffs.each do |move|
        new_pos << [move[0] + dx, move[1] + dy]
      end
      new_pos

    end

  end

  private
    def move_diffs
        raise NotImplementedError
    end 

end




class Knight

    KNIGHT_DIRS = [
        [-2, -1],
        [-2,  1],
        [-1, -2],
        [-1,  2],
        [ 1, -2],
        [ 1,  2],
        [ 2, -1],
        [ 2,  1]
    ].freeze

end

class King

    KING_DIRS = [
        [-1,0], #left
        [1,0],  #right
        [0,1], #up
        [0,-1], #down
        [1,1],
        [-1,-1],
        [-1,1],
        [1,-1]
    ].freeze

    include Stepable

    def symbol
      '♚'.colorize(color)
    end
  
    protected
  
    def move_diffs
      # return an array of diffs representing where a King can step to
      KING_DIRS
    end

end