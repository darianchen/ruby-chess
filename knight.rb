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

    def symbol
        '♞'.colorize(color)
      end
    
      protected
    
      def move_diffs
        KNIGHT_DIRS
      end

end
