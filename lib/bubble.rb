module SortAlgorithms
  class BubbleSort
    attr_reader :array
    
    def initialize(array)
      @array = array 
    end

    def sort
      array.length.times { array.length.pred.times { |i| swap(i) } }
      array
    end

    def swap(i)
      array[i], array[i+1] = array[i+1], array[i] if array[i+1] < array[i]      
    end
  end
end

array = ["e", "a", "c", "b", "d"]
numz  = [10, 2, 1, 9, 12, 8]
SortAlgorithms::BubbleSort.new(array).sort # => ["a", "b", "c", "d", "e"]
SortAlgorithms::BubbleSort.new(numz) .sort # => [1, 2, 8, 9, 10, 12]