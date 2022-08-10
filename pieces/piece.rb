require "colorize"
class Piece
    attr_reader :pos, :board, :color
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = pos
        @board[pos] = self
    end

    def inspect # p calls this
        symbol
    end

    def to_s # puts, print calls this
        symbol
    end

    def empty?
        
    end

    def valid_moves #valid not in check moves


    end

    def pos=()
        
    end

    def symbol 
        
    end

    private
    def move_into_check?(end_pos)

    end

end