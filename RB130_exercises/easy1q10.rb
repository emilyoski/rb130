=begin

Input: Array and implicit block
-can be an empty array

Output: Integer
-Return a count of the number of times the block returns true
-0 is a valid output

Examples:
-nothing noted

Data Structures:
-Array 

Algorithm:
-Initialize a count to 0
-Iterate through the array, yielding each element to the block
  -Increment the count if the block returns true
-Return the count

def count(array)
  count = 0
  array.each { |ele| count += 1 if yield(ele) }
  count
end
=end

def count(array)
  count = 0
  0.upto(array.size - 1) do |idx|
    count += 1 if yield(array[idx])
  end
  count
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2