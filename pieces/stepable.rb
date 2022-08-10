require "byebug"
module Stepable
    def moves
        valid_moves = []        
        x, y = self.pos
        move_diffs.each do |dx,dy|
            next_pos = [x + dx, y + dy]
            if next_pos.all? { |coord| coord.between?(0, 7) }
                if board[next_pos] == "⚿" || board[next_pos].color != self.color
                    valid_moves << next_pos
                end
            end 
        end
        valid_moves
    end

    private
    def move_diffs
        raise NotImplementedError
    end 
end