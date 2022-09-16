require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file'

class KindTypeTest < Minitest::Test
  def test_kind_of
    value = 5
    assert_kind_of(Numeric, value)
  end
end