require 'spec_helper'
require_relative '../projects/stockpicker_project'

describe StockPicker do

    context "When testing the pickstock_simplified method" do
        it "finds the best days to buy and to sell when given an array of positive integers of size 9" do
            stockpicker = StockPicker.new
            array = [17,5,6,9,15,8,6,1,119]
            expected_array = [7,8]
            result_array = stockpicker.pickstock_simplified(array)
            expect(result_array).to eq(expected_array)
        end

        it "finds the best days to buy and to sell when given an array of positive integers of size 9" do
            stockpicker = StockPicker.new
            array = [17,3,6,9,15,8,6,1,10]
            expected_array = [1,4]
            result_array = stockpicker.pickstock_simplified(array)
            expect(result_array).to eq(expected_array)
        end
    end
end