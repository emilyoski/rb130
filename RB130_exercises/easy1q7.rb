=begin

-if each block returns a truthy value for all elements then it returns true
-method stops searching the collection when we find a false
-array is empty then return true (regardless of block)
-cannot use all? any? none? one?

=end

def all?(array)
  array.each { |ele| return false unless yield(ele) }
  true
end

puts all?([1, 3, 5, 6]) { |value| value.odd? } == false
puts all?([1, 3, 5, 7]) { |value| value.odd? } == true
puts all?([2, 4, 6, 8]) { |value| value.even? } == true
puts all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts all?([1, 3, 5, 7]) { |value| true } == true
puts all?([1, 3, 5, 7]) { |value| false } == false
puts all?([]) { |value| false } == true