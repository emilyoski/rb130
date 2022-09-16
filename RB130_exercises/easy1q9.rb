=begin

Input: Array
-Can be an empty array
Output: Boolean (true or false)
-It should return true if the block returns a truthy value for exactly one element
-Otherwise it should return false
-Method should stop processing elements of the array as soon as the block returns 
  a truthy value for the second time
-Empty array should return false regardless of the block 
-Cannot use all? any? none? or one?

Algorithm:
-Iterate through the array
-Keep a count of "true"
-Return false if the count is 2 (or more)
-Return true if the count is 1 and false otherwise

=end

def one?(array)
  count = 0
  array.each do |ele|
    count += 1 if yield(ele)
    return false if count >= 2
  end
  count == 1 ? true : false
end

puts one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
puts one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
puts one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
puts one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
puts one?([1, 3, 5, 7]) { |value| true }           # -> false
puts one?([1, 3, 5, 7]) { |value| false }          # -> false
puts one?([]) { |value| true }                     # -> false