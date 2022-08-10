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
