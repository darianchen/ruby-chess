require_relative 'pieces/pieces'

class Board

    def initialize
        @rows = Array.new(8) {Array.new(8,"⚿")}
        #@null_piece = NullPiece.new
    end

    def [](pos)
        row, col = pos
        @rows[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @rows[row][col] = piece
    end

    def move_piece(color, start_pos,end_pos)
        raise "No piece at start position" if self[start_pos].nil?
        raise "Piece cannot move to end position" if end_pos.any? { |num| !num.between?(0,7)}

    end


    def print_board
        @rows.each do |row|
            puts row.join(" ")
        end
    end
end

b = Board.new
r = Rook.new(:black,b,[7,0])
knight = Knight.new(:black,b,[7,1])
bishop = Bishop.new(:black,b,[7,2])
k = King.new(:black, b, [7, 3])
queen = Queen.new(:black, b, [7, 4])
bishop2 = Bishop.new(:black,b,[7,5])
knight2 = Knight.new(:black,b,[7,6])
rook2 = Rook.new(:black,b,[7,7])

b[[7, 0]] = r
b[[7, 1]] = knight
b[[7, 2]] = bishop
b[[7, 3]] = queen
b[[7, 4]] = k
b[[7, 5]] = bishop2
b[[7, 6]] = knight2
b[[7, 7]] = rook2

b.print_board