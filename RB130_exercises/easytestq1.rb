require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!


class EasyTesting < Minitest::Test
  def test_value_odd
    value = 3
    assert_equal(true, value.odd?)
  end
end
