require_relative "piece"
require_relative "stepable"

class King < Piece
  include Stepable

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

    def symbol #get
      '♚'.colorize(:color)
    end
  
    protected
  
    def move_diffs
      KING_DIRS
    end

  end
