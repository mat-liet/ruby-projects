require 'pry'

class BubbleSort

    def bubble_sort(array)
        sorted = false
        cursor = 0
        if array.length != 0 
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
        else
            []
        end
    end

    sort = BubbleSort.new
    array1 = [4,3,78,2,0,2]
end