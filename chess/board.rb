require_relative "./piece.rb"

class Board
    attr_accessor :sentinel, :row

    def initialize
        @row = Array.new(8) { Array.new(8, nil) } 
        @sentinel = nil
        # @row[0][0], , ,  = Piece.new("Rook")
    end

    def move_piece(start_pos, end_pos)
        start1, start2 = start_pos
        end1, end2 = end_pos
        start = @row[start1][start2]
        ending = @row[end1][end2]
        if start == nil || !(end1.between?(0,7) && end2.between?(0,7))
            # raise Exception
            raise "There are no piece there!"
        else
            start, ending = ending, start
        end
    end


end#end
# 0 1 2 3 4 5 6 7
#[_,_,_,_,_,_,_,_] 0
#[_,_,_,_,_,_,_,_] 1
#[_,_,_,_,_,_,_,_] 2
#[_,_,_,_,_,_,_,_] 3 
#[_,_,_,_,_,_,_,_] 4
#[_,_,_,_,_,_,_,_] 5
#[_,_,_,_,_,_,_,_] 6
#[_,_,_,_,_,_,_,_] 7