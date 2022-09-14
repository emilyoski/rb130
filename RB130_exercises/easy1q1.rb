class Tree
  include Enumerable

  def each
    each do |item| yield(item)
  end

  def map
    # implementation of map
  end

  def reduce
    # implementation of reduce
  end

  def select
    # implementation of select
  end
end

