require_relative 'player'
require_relative 'board'
require 'pry'

# This class will control the flow of the game
# still need to add checks for valid input within range and a valid num
# need to make sure it keeps asking question for input
# author: Matej Lietava

class Game
    
    attr_accessor :player_one
    attr_accessor :player_two
    attr_accessor :board

    def initialize
        puts "What is the name of player one?"
        player_one_name = gets.chomp
        puts "What would you like your symbol to be?"
        player_one_symbol = gets.chomp
        @player_one = Player.new(player_one_name, player_one_symbol)

        valid_name = false
        until valid_name do
            puts "What is the name of player two?"
            player_two_name = gets.chomp
            if player_two_name != player_one_name
                valid_name = true
            else
                puts "Your name cannot be the same as player ones name!"
            end
        end

        valid_symbol = false
        until valid_symbol do
            puts "What would you like your symbol to be?"
            player_two_symbol = gets.chomp
            if player_two_symbol != player_one_symbol
                valid_symbol = true
            else
                puts "Your symbol cannot be the same as player ones symbol!"
            end
        end
        @player_two = Player.new(player_two_name, player_two_symbol)
        
        @board = Board.new
    end

    public 
    def play_game
        won = false
        full = false
        turn_player = player_one
        turn = 1
        invalid_index = []
        board.print_board
        until won || full do
            valid_index = false
            until valid_index do
                puts "#{turn_player.player_name}, please enter a number that is available from the board to place your symbol"
                index = gets.chomp.to_i
                if index.between?(1,9) && !invalid_index.include?(index)
                    valid_index = true
                    invalid_index.push(index)
                elsif
                    puts "Make sure your number is between 1 and 9 and it has not been already used!"
                end
            end
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
        board.populate_board
    end

    public
    def run
        finished = false
        until finished do
            self.play_game
            puts "Would you like to play another game? (Y/N)"
            replay = gets.chomp
            if replay.downcase == "n"
                finished = true
                puts "Thanks for playing!"
            end
        end
    end
end

game = Game.new
game.run
