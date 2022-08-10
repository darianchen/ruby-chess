require "byebug"
module Stepable
    def moves        
        valid_moves = []
        x, y = self.pos
        debugger
        move_diffs.each do |dx,dy|
            if (x+dx).between?(0,7) && (y+dy).between?(0,7) 
                if (board[[x + dx,y + dy]] == nil) #|| board[[x + dx,y + dy]].color != self.color)
                    valid_moves << [x + dx,y + dy]
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

