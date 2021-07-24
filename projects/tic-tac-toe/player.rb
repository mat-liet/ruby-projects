class Player
    attr_accessor :player_name
    attr_accessor :symbol

    def initialize(player_name, symbol)
        @player_name = player_name
        @symbol = symbol
    end

end