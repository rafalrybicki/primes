require_relative 'primes'
require 'test/unit'

class TestPrimes < Test::Unit::TestCase
  def test_limit_lower_than_2
    assert_equal(primes(-1), [])
    assert_equal(primes(0), [])
    assert_equal(primes(1), [])
  end

  def test_limit_10
    assert_equal(primes(10), [2, 3, 5, 7])
  end

  def test_limit_50
    assert_equal(primes(50), [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47])
  end
end
