#This class will contain the board and the methods to change the tile.
# author: Matej Lietava

class Board

    attr_accessor :array

    def initialize()
        @array = Array.new(3) {Array.new(3)}
        populate_board
    end

    public def print_index()
        array.each_with_index do |num, i|
            array[i].each_with_index do |second_num, j|
                puts second_num
            end
        end
    end

    private def populate_board()
        counter = 1
        array.each_with_index do |num, i|
            array[i].each_with_index do |second_num, j|
                array[i][j] = counter
                counter += 1
            end
        end
    end

    public def change_tile(symbol)

    end 
end

board = Board.new
board.print_index