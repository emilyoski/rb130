=begin

-Input: Array
-Could be an empty array
-Should be an array passed in
Output: Boolean
-True or false depending on the output of the block
-True if any element in the array causes the block to return true
-Method should stop iterating through the collection when true is confirmed
-An empty array should return false (regardless of block)
-Cannot use all?, any?, none?, one?

Examples:
[1 3 5 6] -> 6.even? (true) -> true

Data Structure:
Array input and boolean output 

Algorithm:
-protect against a non Array input
-protect against an empty array
-iterate through the elements of the array
-yield to the block for each element
-if the block returns a truthy value then the method should return true
-if not -> return false

=end

def any?(array)
  # raise NoMethodError if array.class != Array
  return false if array.empty?

  array.each do |ele|
    value = yield(ele)
    return true if value
  end
  false
end

# puts any?(3) { |value| true } == false
puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false