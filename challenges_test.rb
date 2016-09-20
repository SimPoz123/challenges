require 'minitest/autorun'
require './challenges'

describe 'challenges' do

  describe 'everywhere?' do

    it "is true when n is everywhere" do
      everywhere?([1, 2, 1, 3], 1).must_equal(true)
    end

    it "is false when number other than n is everywhere" do
      everywhere?([1, 2, 1, 3], 2).must_equal(false)
    end

    it 'is false when n is not everywhere' do
      everywhere?([1, 2, 1, 3, 4], 1).must_equal(false)
    end

  end

  describe 'sum2' do

    it 'returns the sum of the first two' do
      sum2([1, 2, 3]).must_equal(3)
      sum2([1, 1, 1, 1]).must_equal(2)
    end

    it 'returns the sum of all numbers if there are only two in the array' do
      sum2([1, 1]).must_equal(2)
    end

    it 'returns the sum of arrays with less than length 2' do
      sum2([3]).must_equal(3)
      sum2([]).must_equal(0)
    end

  end

end
