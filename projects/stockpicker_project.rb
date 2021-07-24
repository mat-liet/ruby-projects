require 'pry'

# This class contains a method that finds the best day to buy and sell.
# author: Matej Lietava
class StockPicker

    def pickstock(array)
        gain = 0
        min_index = 0
        max_index = 0
        for i in 0...array.length do
            min = array[i]
            max = array[i]
            max_array = []
            for j in i...array.length do
                if array[j] > max
                    max = array[j]
                    max_array[0] = max
                    max_array[1] = j
                end
            end
            puts "Min: " + min.to_s + " Max: " + max.to_s
            temp_gain = max - min
            if temp_gain > gain
                gain = temp_gain
                min_index = i
                max_index = max_array[1]
            end
            puts "Gain: " + gain.to_s
        end
            
        return [min_index, max_index]
    end

    def pickstock_simplified(array)
        min = array[0]
        min_pointer = 0
        gain = 0
        days = []
        array.each_with_index do |num, index|
            if num < min 
                min = num
                min_pointer = index
            elsif (num-min) > gain
                gain = num - min
                days = [min_pointer, index]
            end
        end
        days
    end

    picker = StockPicker.new
    puts picker.pickstock_simplified([17,5,6,9,15,8,6,1,119]).to_s
end