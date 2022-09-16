require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file'

class List
  def initialize
  end

  def process
    self
  end
end

class SameObjTest < Minitest::Test
  def setup
    @list = List.new
  end

  def test_same_object
    assert_same(@list, @list.process )
  end
end