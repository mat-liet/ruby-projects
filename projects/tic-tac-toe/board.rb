#This class will contain the board and the methods to change the tile.
# author: Matej Lietava

class Board
    
    attr_accessor :array

    def initialize()
        @array = Array.new(3) {Array.new(3)}
        populate_board
    end

    public 
    def print_index()
        array.each_with_index do |num, i|
            array[i].each_with_index do |second_num, j|
                puts second_num
            end
        end
    end

    private 
    def populate_board()
        counter = 1
        array.each_with_index do |num, i|
            array[i].each_with_index do |second_num, j|
                array[i][j] = counter
                counter += 1
            end
        end
    end

    public 
    def print_board()
        puts "" 
        puts " " + array[0][0].to_s + " | " + array[0][1].to_s + " | " + array[0][2].to_s
        puts "---" + "+" + "---" + "+" + "---"
        puts " " + array[1][0].to_s + " | " + array[1][1].to_s + " | " + array[1][2].to_s
        puts  "---" + "+" + "---" + "+" + "---"
        puts " " + array[2][0].to_s + " | " + array[2][1].to_s + " | " + array[2][2].to_s
        puts ""
    end
    
    public 
    def change_symbol(symbol, index)
        index -= 1
        row = index / 3
        col = index % 3
        array[row][col] = symbol
    end

    public
    def is_won
        if columns_win || row_win || diagonal_win
            true
        else
            false
        end
    end

    private
    def columns_win
        array.each_with_index do |num, i|
            if array[i][0] != turn_player.symbol
                false
            end
        end
        true
    end

    private
    def row_win
        
    end

    public
    def is_full
    end
    
end

board = Board.new
board.print_board
board.change_symbol("X", 3)
board.print_board