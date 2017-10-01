require_relative 'helper'
require_relative '../lib/sorthing_algorithms.rb'

class SortingAlgorthimTest < Minitest::Test 
  attr_reader :bubble, 
              :insertion

  def setup 
    @bubble    = SortingAlgorithms::BubbleSort.new
    @insertion = SortingAlgorithms::InsertionSort.new
  end

  def test_bubble_returns_array 
    assert_instance_of Array, bubble.sort([])
  end

  def test_sort_numbers_and_return_ordered_array
    expected = [1, 2, 3, 4, 7, 9]
    actual   = bubble.sort([1, 4, 9, 3, 2, 7])
    assert_equal actual, expected
  end

  def test_bubble_sort_works_with_strings
    expected = ['a', 'b', 'd', 'f', 'j', 'm', 'x', 'z']
    actual   = bubble.sort(['z', 'd', 'a', 'f', 'b', 'x', 'm', 'j'])
    assert_equal actual, expected    
  end

  def test_insertion_sort_ints
    actual   = insertion.sort([9, 20, 33, 15, 4, 7, 16, 2])
    expected = [2, 4, 7, 9, 15, 16, 20, 33]
    
    assert_equal actual, expected
  end

  def test_insertion_sort_strings
    expected = ['a','b','c','d','g','i','m']
    actual = insertion.sort(['d', 'b', 'c', 'a', 'm', 'g', 'i'])
  end
end