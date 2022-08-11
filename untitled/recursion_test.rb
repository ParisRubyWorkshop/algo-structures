require "minitest/autorun"
require_relative 'recursion'

class RecursionTest < Minitest::Test
  def test_zero
    assert_equal 0, rec_sum(0)
  end

  def test_four
    assert_equal 10, rec_sum(4)
  end
end
