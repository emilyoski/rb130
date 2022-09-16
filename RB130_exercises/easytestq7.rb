require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file'

class TypeTest < Minitest::Test
  def test_type_value
    value = Numeric.new
    assert_instance_of(Numeric, value)
  end
end