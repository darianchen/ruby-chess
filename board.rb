require_relative "piece"
class Board

    def initialize
        @board = Array.new(8) {Array.new(8,"⚿")}
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
        @board.each do |row|
            row.each do |square|
                print square
            end
            puts
        end

    end


end

