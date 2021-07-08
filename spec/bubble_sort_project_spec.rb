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

# array2 = [4,3,1,19,1,9]
# array3 =  [6, 11, 5, 20, 1]
# array4 =  [14, 19, 17, 7, 11]
# array5 =  [8, 1, 18, 20, 13]
# array6 =  [20, 4, 2, 18, 8]
# array7 =  [1, 7, 14, 4, 5]
# array8 =  [12, 9, 17, 15, 19]
# array9 =  [13, 19, 12, 2, 16]
# array10 =  [1, 12, 2, 11, 6]
# array11 =  [1, 4, 14, 13, 19]
# array12 =  [12, 1, 20, 10, 18]
# array13 = [765, 751, 157, 516, 909, 742, 485, 59, 736, 123, 286, 383, 709, 272, 757, 531, 987, 766, 927, 153]
# array14 = [76, 640, 606, 732, 289, 188, 812, 544, 798, 142, 826, 270, 748, 619, 861, 710, 334, 793, 306, 6]
# array15 = [714, -139, 944, -15, 220, -308, 51, -537, -249, 442, -635, -637, -818, -345, 425, -675, 573, 133, 153, 352]
# puts sort.bubble_sort(array1).to_s
# puts sort.bubble_sort(array2).to_s
# puts sort.bubble_sort(array3).to_s
# puts sort.bubble_sort(array4).to_s
# puts sort.bubble_sort(array5).to_s
# puts sort.bubble_sort(array6).to_s
# puts sort.bubble_sort(array7).to_s
# puts sort.bubble_sort(array8).to_s
# puts sort.bubble_sort(array9).to_s
# puts sort.bubble_sort(array10).to_s
# puts sort.bubble_sort(array11).to_s
# puts sort.bubble_sort(array12).to_s
# puts sort.bubble_sort(array13).to_s
# puts sort.bubble_sort(array14).to_s
# puts sort.bubble_sort(array15).to_s