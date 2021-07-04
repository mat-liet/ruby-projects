require 'pry'

class StockPicker

    # ary.each_with_index.min  # => [1, 4]
    # first is value and second is index
    def pickstock(array)
        min_val_index = array.each_with_index.min[1]
        # puts min_val_index
        highest_value_index = array.each_with_index.max[1]
        # puts highest_value_index
        until highest_value_index > min_val_index
            array[highest_value_index + 1, array.length]
        end
        puts [min_val_index, highest_value_index]
    end

    picker = StockPicker.new
    picker.pickstock([17,3,6,9,15,8,6,1,10])
end