require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class EasyTesting < Minitest::Test
  def test_downcase_value
    value = 'XYZ'
    assert_equal('xyz', value.downcase)
  end
end