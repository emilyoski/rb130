require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

# require_relative 'file'
class NoExperienceError < StandardError
end

class Employee
  def initialize
  end

  def hire
    raise NoExperienceError
  end
end

class ExceptionTest < Minitest::Test
  def setup
    @employee = Employee.new
  end

  def test_hire_exceptions
    assert_raises(NoExperienceError) { @employee.hire }
  end
end
