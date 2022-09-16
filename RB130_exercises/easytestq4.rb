require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file we are testing'

class EasyTesting < Minitest::Test
  def test_empty_array
    array = []
    #assert_equal([], array) 
    assert_empty(array)
  end
end