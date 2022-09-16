# Complete `Bike` and `Car` class so the tests pass.

class Bike
  attr_reader :name 

  def initialize(name)
    @name = name
  end

  def ==(other_bike)
    return false if other_bike.class != Bike
    name == other_bike.name
  end
end

class Car
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other_car)
    return false if other_car.class != Car
    name == other_car.name
  end
end

require "minitest/autorun"

class Transport_test < Minitest::Test

  def test_name1
    car1 = Car.new("Honda")
    bike1 = Bike.new("Honda")
    assert_equal(false, car1 == bike1)
  end

  def test_name2
    car1 = Car.new("Honda")
    car2 = Car.new("Honda")
    assert_equal(true, car1 == car2)
  end

  def test_name3
    car1 = Car.new("Hondaa")
    car2 = Car.new("Honda")
    assert_equal(false, car1 == car2)
  end
end

# What does this output and what concept does it demonstrate?

def a_method(name, a_proc)
  a_proc.call(name)
end
 
name = "Dre"
a_proc = Proc.new { |arg| puts "Dr #{arg}"}

a_method(name, a_proc)
name = "Dolittle"
a_method(name, a_proc)

# What will the following code output return and what concept does it demonstrate? 
def method_1(&block)
  method_2(block)
end

def method_2(block)
  method_3(&block)
end

def method_3(&block)
  block.call
end

p method_1 { "hello" }
