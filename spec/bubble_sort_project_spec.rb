require 'spec_helper'
require_relative '../projects/bubble_sort_project'

describe BubbleSort do
    context "When testing bubble sort method" do
        it "sorts an array of size 6 with just positive integers" do
            sort = BubbleSort.new
            array_to_sort = [4,3,78,2,0,2]
            expected_array = [0, 2, 2, 3, 4, 78]
            result_array = sort.bubble_sort(array_to_sort)
            expect(result_array).to eq(expected_array)
        end
    end
end