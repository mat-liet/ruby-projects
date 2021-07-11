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

        it "sorts an array if size 20 with just positive integers" do
            sort = BubbleSort.new
            array_to_sort = [765, 751, 157, 516, 909, 742, 485, 59, 736, 123, 286, 383, 709, 272, 757, 531, 987, 766, 927, 153]
            expected_array = [59, 123, 153, 157, 272, 286, 383, 485, 516, 531, 709, 736, 742, 751, 757, 765, 766, 909, 927, 987]
            result_array = sort.bubble_sort(array_to_sort)
            expect(result_array).to eq(expected_array)
        end

        it "sorts an array of size 20 with both positive and negative integers" do
            sort = BubbleSort.new
            array_to_sort = [714, -139, 944, -15, 220, -308, 51, -537, -249, 442, -635, -637, -818, -345, 425, -675, 573, 133, 153, 352]
            expected_array = [-818, -675, -637, -635, -537, -345, -308, -249, -139, -15, 51, 133, 153, 220, 352, 425, 442, 573, 714, 944]
            result_array = sort.bubble_sort(array_to_sort)
            expect(result_array).to eq(expected_array)
        end

        it "returns an empty array when passed an empty array" do
            sort = BubbleSort.new
            array_to_sort = []
            expected_array = []
            result_array = sort.bubble_sort(array_to_sort)
            expect(result_array).to eq(expected_array)
        end

        it "leaves a sorted array as is" do
            sort = BubbleSort.new
            array_to_sort = [-1, 0, 1, 2, 3, 4]
            expected_array = [-1, 0, 1, 2, 3, 4]
            result_array = sort.bubble_sort(array_to_sort)
            expect(result_array).to eq(expected_array)
        end
    end
end