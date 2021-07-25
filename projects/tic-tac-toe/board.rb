#This class will contain the board and the methods to change the tile.
# author: Matej Lietava
require 'pry'

class Board
    
    attr_accessor :array

    def initialize()
        # @array = Array.new(3) {Array.new(3)}
        @array = [["X", "O", 3], [4, 5, 6], [7, 8, "X"]]
        # populate_board
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
    def is_won(symbol)
        # binding.pry
        if column_win(symbol) || row_win(symbol) || diagonal_win(symbol)
            true
        else
            false
        end
    end

    private
    def row_win(symbol)
        win = false
        array.each_with_index do |num, i| # row
            if array[i].all?(symbol)
                win = true
            end
        end
        win
    end

    private
    def column_win(symbol)
        win = false
        for i in 0..2 do
            same = false
            binding.pry
            for j in 0..2 do
                if symbol == array[j][i].to_s
                    same = true
                    binding.pry
                else
                    same = false
                    binding.pry
                end
            end
            if same == true then win = same end
        end
        win
    end

    private
    def diagonal_win(symbol)
        first_diag = [array[0][0], array[1][1], array[2][2]]
        second_diag = [array[0][2], array[1][1], array[2][0]]
        win = false
        if first_diag.all?(symbol) || second_diag.all?(symbol)
            win = true
        end
        win
    end

    public
    def is_full
    end
    
end

board = Board.new
puts board.is_won("X")