require 'minitest/autorun'
require './challenges'

describe 'challenges' do
  it "is true when n is everywhere" do
    everywhere?([1, 2, 1, 3], 1)
  end

  it "is false when number other than n is everywhere" do
    everywhere?([1, 2, 1, 3], 2)
  end

  it 'is false when n is not everywhere' do
    everywhere?([1, 2, 1, 3, 4], 1)
  end
end
