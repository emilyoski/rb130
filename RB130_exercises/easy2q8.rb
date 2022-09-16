=begin

Input: Array and a block
-iterates through the array
-find the element that contains the largest value from the block
-Elements of the array might be integers or arrays
Output: Integer
-Represents the element for which the block returned the largest value
-Nil is returned if the array is empty

Algorithm:
-Store the index as 0
-Store the "max" as the first element to the block
-Iterate through the array with index
  -if the block's return value is larger than our max,
    set the index to that index
-Return the array[index]

=end


def max_by(array)
  return nil if array.empty?

  index = 0
  max = yield(array[index])

  array.each_with_index do |ele, idx|
    if yield(array[idx]) > max
      max = yield(array[idx])
      index = idx
    end
  end
  
  array[index]
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil