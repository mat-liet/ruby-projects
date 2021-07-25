require_relative 'player'
require_relative 'board'
require 'pry'

# This class will control the flow of the game
# author: Matej Lietava

class Game
    
    attr_accessor :player_one
    attr_accessor :player_two
    attr_accessor :board
    # attr_accessor :won
    # attr_accessor :full
    # attr_accessor :turn_player

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
        # @won = false
        # @full = false
        # @turn_player = player_one
    end

    public def start_game()
        won = false
        full = false
        turn_player = player_one
        board.print_board
        until won || full do
            # binding.pry
            puts "#{turn_player.player_name}, please enter a number that is available from the board to place your symbol"
            index = gets.chomp.to_i
            board.change_symbol(turn_player.symbol, index)
            board.print_board
            if board.is_won(turn_player.symbol)
                # binding.pry
                won = true
            # elsif board.is_full
            #     full = true
            else
                # binding.pry
                if turn_player.player_name == player_one.player_name
                    # binding.pry
                    turn_player = player_two
                else
                    # binding.pry
                    turn_player = player_one
                end
            end
            # binding.pry
        end
        puts "Well done, #{turn_player.player_name}, you have won the game!"
    end
end

game = Game.new
game.start_game
