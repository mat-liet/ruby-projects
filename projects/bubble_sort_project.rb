require 'pry'

class BubbleSort

    def bubble_sort(array)
        sorted = false
        cursor = 0
        until sorted do
            for num in 0...array.length-cursor do
                if num != array.length-1 
                    if array[num] > array[num + 1]
                        temp = array[num]
                        array[num] = array[num + 1]
                        array[num+1] = temp
                    end 
                end
            end
            cursor += 1
            if cursor == array.length
                sorted = true
            end
        end
        array
    end

    sort = BubbleSort.new
    array1 = [4,3,78,2,0,2]
    array2 = [4,3,1,19,1,9]
    array3 =  [6, 11, 5, 20, 1]
    array4 =  [14, 19, 17, 7, 11]
    array5 =  [8, 1, 18, 20, 13]
    array6 =  [20, 4, 2, 18, 8]
    array7 =  [1, 7, 14, 4, 5]
    array8 =  [12, 9, 17, 15, 19]
    array9 =  [13, 19, 12, 2, 16]
    array10 =  [1, 12, 2, 11, 6]
    array11 =  [1, 4, 14, 13, 19]
    array12 =  [12, 1, 20, 10, 18]
    array13 = [765, 751, 157, 516, 909, 742, 485, 59, 736, 123, 286, 383, 709, 272, 757, 531, 987, 766, 927, 153]
    array14 = [76, 640, 606, 732, 289, 188, 812, 544, 798, 142, 826, 270, 748, 619, 861, 710, 334, 793, 306, 6]
    array15 = [714, -139, 944, -15, 220, -308, 51, -537, -249, 442, -635, -637, -818, -345, 425, -675, 573, 133, 153, 352]
    puts sort.bubble_sort(array1).to_s
    puts sort.bubble_sort(array2).to_s
    puts sort.bubble_sort(array3).to_s
    puts sort.bubble_sort(array4).to_s
    puts sort.bubble_sort(array5).to_s
    puts sort.bubble_sort(array6).to_s
    puts sort.bubble_sort(array7).to_s
    puts sort.bubble_sort(array8).to_s
    puts sort.bubble_sort(array9).to_s
    puts sort.bubble_sort(array10).to_s
    puts sort.bubble_sort(array11).to_s
    puts sort.bubble_sort(array12).to_s
    puts sort.bubble_sort(array13).to_s
    puts sort.bubble_sort(array14).to_s
    puts sort.bubble_sort(array15).to_s
end