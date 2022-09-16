require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file needed' 

class EasyTesting < Minitest::Test
  def test_is_it_nil
    value = nil
    assert_nil(value)
  end
end