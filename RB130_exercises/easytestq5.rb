require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file'

class IncludedObjectTest < Minitest::Test
  def setup
    @list = ['xyz', 2]  
  end

  def test_included_object
    #assert_equal(true, @list.include?('xyz'))
    assert_includes(@list, 'xyz')
  end
end
