module SortingAlgorithms
  class BubbleSort
    def sort(array)
      array.length.times { array.length.pred.times { |i| swap(array, i) } }
      array
    end

    def swap(array, i)
      array[i], array[i+1] = array[i+1], array[i] if array[i+1] < array[i]
    end
  end

  class InsertionSort 

  end
end

if $PROGRAM_NAME == __FILE__
  array = ["e", "a", "c", "b", "d"]
  numz  = [10, 2, 1, 9, 12, 8]
  SortingAlgorithms::BubbleSort.new.sort(array) # => ["a", "b", "c", "d", "e"]
  SortingAlgorithms::BubbleSort.new.sort(numz) # => [1, 2, 8, 9, 10, 12]
end