require_relative 'player'
require_relative 'board'
require 'pry'

# This class will control the flow of the game
# author: Matej Lietava

class Game
    
    attr_accessor :player_one
    attr_accessor :player_two
    attr_accessor :board

    def initialize()
        puts "What is the name of player one?"
        player_one_name = gets.chomp
        puts "What would you like your symbol to be?"
        player_one_symbol = gets.chomp
        @player_one = Player.new(player_one_name, player_one_symbol)

        puts "What is the name of player two?"
        player_two_name = gets.chomp
        puts "What would you like your symbol to be?"
        player_two_symbol = gets.chomp
        @player_two = Player.new(player_two_name, player_two_symbol)
        
        @board = Board.new
    end

    public 
    def play_game()
        won = false
        full = false
        turn_player = player_one
        turn = 1
        board.print_board
        until won || full do
            puts "#{turn_player.player_name}, please enter a number that is available from the board to place your symbol"
            index = gets.chomp.to_i
            board.change_symbol(turn_player.symbol, index)
            board.print_board
            if board.is_won(turn_player.symbol)
                won = true
            elsif turn >= 9
                full = true
            else
                if turn_player.player_name == player_one.player_name
                    turn_player = player_two
                else
                    turn_player = player_one
                end
            end
            turn += 1
        end
        if won 
            puts "Well done, #{turn_player.player_name}, you have won the game!"
        elsif full
            puts "The board is full, it is a draw!"
        end
    end
end

game = Game.new
game.play_game
