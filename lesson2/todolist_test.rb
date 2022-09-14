require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require "minitest/reporters"

Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  # Your tests go here. Remember they must start with "test_"

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todos.first, @list.first)
  end

  def test_last
    assert_equal(@todos.last, @list.last)
  end

  def test_shift
    todo = @list.shift
    assert_equal(@todo1, todo)
    assert_equal(2, @list.size)
  end

  def test_pop
    todo = @list.pop
    assert_equal(todo, @todo3)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_to_a
    assert_instance_of(Array, @list.to_a)
  end

  def test_done_question
    assert_equal(false, @list.done?)
  end

  def test_add_error_raised
    assert_raises(TypeError) do
      @list.add("Do something")
    end
  end

  def test_shovel_adds
    @list.<<(Todo.new("Study Launch School"))
    assert_equal(4, @list.size)
  end

  def test_add
    todo = Todo.new("Study Launch School")
    @list.add(todo)
    @todos << todo

    assert_equal(@todos, @list.to_a)
  end

  def test_item_at
    assert_raises(IndexError) do
      @list.item_at(100)
    end

    todo = @list.item_at(0)
    assert_equal(todo, @todo1)
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(100) }
    @list.mark_done_at(0)
    assert_equal(true, @todo1.done?)
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(100) }

    @list.mark_all_done
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)

    @list.mark_undone_at(0)
    assert_equal(false, @todo1.done?)
  end

  def test_done_bang
    @list.done!
    assert_equal(true, @todo1.done?)
    assert_equal(true, @todo2.done?)
    assert_equal(true, @todo3.done?)
    assert_equal(true, @list.done?)
  end

  def test_remove_at
    assert_raises(IndexError) { @list.remove_at(100) }

    todo = @list.remove_at(1)

    assert_equal(todo, @todo2)
    assert_equal([@todo1, @todo3], @list.to_a )
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s_item_done
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [X] Go to gym
    OUTPUT

    @todo3.done!
    assert_equal(output, @list.to_s)
  end

  def test_to_s_all_done
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    @list.mark_all_done
    assert_equal(output, @list.to_s)
  end

  def test_each
    @list.each { |todo| todo.done! }
    @todos.each { |todo| todo.done! }
    assert_equal(@todo1, @list.to_a[0])
    assert_equal(@todo2, @list.to_a[1])
    assert_equal(@todo3, @list.to_a[2])
  end

  def test_each_return_value
    each_return = @list.each { |_| }
    assert_same(each_return, @list)
  end

  def test_select
    another_list = @list.select { |_| true }
    assert_equal([@todo1, @todo2, @todo3], another_list.to_a)
    assert_instance_of(TodoList, another_list)
  end
end