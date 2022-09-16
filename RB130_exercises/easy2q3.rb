

def map(collect)
  new_collect = []
  collect.each { |key, value| new_collect << yield(key, value) }
  new_collect
end


puts map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
puts map([]) { |value| true } == []
puts map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
puts map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
puts map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
p map({1 => 'one', 2 => 'two'}) { |k,v| [k * 5, v * 2] }