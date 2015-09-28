require 'minitest/autorun'
require "minitest/reporters"

require_relative 'number_summary'

class NumberSummaryTest < MiniTest::Test
	
end

module NumberSummaryTests

	def test_max
		assert_equal 4, NumberSummary.max([1,2,3,4])
		assert_equal 6, NumberSummary.max([6,1,3,4])
		assert_equal 67, NumberSummary.max([4,67,3,2])
		assert_equal 9, NumberSummary.max([1,2,9,5])
	end

	def test_min
		assert_equal 3, NumberSummary.min([6,789,3,4])
		assert_equal 2, NumberSummary.min([4,67,3,2])
		assert_equal 1, NumberSummary.min([1,2,9,5])
	end
	
	def test_mean
		assert_equal 5, NumberSummary.mean([6,7,3,4])
		assert_equal 3, NumberSummary.mean([4,6,3,2])
		assert_equal 4, NumberSummary.mean([1,2,9,5])
	end

	def test_median
		assert_equal 4, NumberSummary.median([6,3,4,3,4])
		assert_equal 3, NumberSummary.median([4,3,3,2])
		assert_equal 6, NumberSummary.median([1,2,9,5])
	end

	def test_mode
		assert_equal 2, NumberSummary.mode([1,2,2,4])
		assert_equal 3, NumberSummary.mode([3,6,3,3])
		assert_equal 4, NumberSummary.mode([4,4,4,4])
	end
end