module Stepable
    def moves
        valid_moves = []
        x, y = self.pos

        move_diffs.each do |dx,dy|
            if (x+dx).between?(0..7) && (y+dy).bewteen?(0..7) && ((board[[x + dx,y + dy]] == NullPiece || board[[x + dx,y + dy]].color != self.color))
                valid_moves << [x + dx,y + dy]
            end
        end
        valid_moves
    end

    private
    def move_diffs
        raise NotImplementedError
    end 
end

