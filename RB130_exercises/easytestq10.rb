require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file'

class RefuseTest < Minitest::Test
  def test_refute
    refute(['xyz'].include?('xyz'))
  end
end