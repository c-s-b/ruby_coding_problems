def bubble_sort(array)
    swap = true
    while swap
        swap = false
        array.each_with_index do |number, index|
            unless index == array.length - 1
                if number > array[index + 1]
                    swap = true
                    array.delete_at(index)
                    array.insert(index + 1, number)
                end
            end
        end
    end
    array
end
p bubble_sort([4,3,78,2,0,2].shuffle) # shuffle for testing