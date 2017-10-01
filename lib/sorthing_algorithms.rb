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
    def sort(array)
      for i in 1...array.length 
        j = i
        while j > 0
          if array[j-1] > array[j]
            array[j], array[j-1] = array[j-1], array[j]
          end
          j = j - 1
        end
      end
      array
    end
  end

  class MergeSort 
    def sort(array)
      return array if array.length <= 1 
      half  = array.length / 2
      left  = array[0...half]
      right = array[half..-1]
      divide_and_conquer(sort(left), sort(right))
    end

    def divide_and_conquer(left, right)
      finished = []
      until left.length == 0 || right.length == 0
        if left.first <= right.first
          finished << left.shift
        else 
          finished << right.shift
        end
      end
      finished.concat(left).concat(right)
    end
  end
end

if $PROGRAM_NAME == __FILE__
  array = ["e", "a", "c", "b", "d"]
  numz  = [10, 2, 1, 9, 12, 8]
  SortingAlgorithms::BubbleSort.new.sort(array)     # => ["a", "b", "c", "d", "e"]
  SortingAlgorithms::BubbleSort.new.sort(numz)      # => [1, 2, 8, 9, 10, 12]
  SortingAlgorithms::InsertionSort.new.sort(array)  # => ["a", "b", "c", "d", "e"]
  SortingAlgorithms::InsertionSort.new.sort(numz)   # => [1, 2, 8, 9, 10, 12]
  SortingAlgorithms::MergeSort.new.sort(array)      # => ["a", "b", "c", "d", "e"]
  SortingAlgorithms::MergeSort.new.sort(numz)       # => [1, 2, 8, 9, 10, 12]
end