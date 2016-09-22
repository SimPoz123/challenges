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

  describe 'has_bad?' do

    it 'is true when bad is at the beginning' do
      has_bad?("badxx").must_equal(true)
    end

    it 'is true when bad is second' do
      has_bad?("xbadxx").must_equal(true)
    end

    it 'is false when bad is not first or second' do
      has_bad?("xxbadxx").must_equal(false)
      has_bad?("simon").must_equal(false)
    end

  end

  describe 'count_hi' do

    it "works when hi is its own word" do
      count_hi("abc hi ho").must_equal(1)
    end

    it 'works when hi is part of the word' do
      count_hi("ABChi hi").must_equal(2)
    end

    it "works when multiple his are one word" do
      count_hi("hihi").must_equal(2)
    end

  end

  describe 'common_end?' do

    it "is true when common beginning" do
      common_end?([1, 2, 3], [1, 4]).must_equal(true)
    end

    it "is true when common end" do
      common_end?([1, 2, 3], [7, 3]).must_equal(true)
    end

    it 'is true when both common beginning and common end' do
      common_end?([1, 2, 3], [1, 3]).must_equal(true)
    end

    it "is false when not common beginning or end" do
      common_end?([1, 2, 3], [7, 3, 2]).must_equal(false)
    end

  end

  describe 'count_evens' do

    it "counts the evens" do
      count_evens([2, 1, 2, 3, 4]).must_equal(3)
    end

    it 'counts 0 as an even' do
      count_evens([2, 2, 0]).must_equal(3)
    end

    it 'returns 0 if there are no evens' do
      count_evens([1, 3, 5]).must_equal(0)
    end

  end

  describe 'sum67' do

    it "adds with no 6 or 7" do
      sum67([1, 2, 2]).must_equal(5)
    end

    it 'does not add numbers between 6 and 7' do
      sum67([1, 2, 2, 6, 99, 99, 7]).must_equal(5)
    end

    it 'does not add six or seven when next to each other' do
      sum67([1, 1, 6, 7, 2]).must_equal(4)
    end

  end

  describe 'left2' do

    it "rotates a string left 2" do
      left2("Ruby").must_equal("byRu")
      left2("Hello").must_equal("lloHe")

    end

    it "does nothing if only two letters" do
      left2("Hi").must_equal("Hi")
    end

  end

  describe 'last_two' do

    it "switches the last two" do
      last_two("coding").must_equal("codign")
    end

    it 'works with 3 letters' do
      last_two("cat").must_equal("cta")
    end

    it 'works with 2 letters' do
      last_two("ab").must_equal("ba")
    end

  end

end
