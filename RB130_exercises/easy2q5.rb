=begin

Input: Array and block
-can be an empty array
Output: Array
-passing each element to the block until it finds an element for which the block returns false or nil
-converts the remaining elements of the collection (including the element that results in falsey return)
  to an array and returns the result
-if Array is empty then method returns an empty array
-if block returns a truthy value for every element, method returns an empty array

Example:
[1 3 5 6] value.odd? -> 1 (true) next, 3 (true) next, 5(true) -> 6 (false) [6]
[1 3 5 6] value.even? -> 1 (false) -> [1 3 5 6]

Data Structure:
Array for the input; array for the output 
[] -> [(first ele to be falsey block return) (rest of array)]

Algorithm:
-set falsey_found to false
-set the idx to 0
-Iterate through the array
-Continue to iterate until opposite(find a falsey value) or (exceed the length of array)
  -Yield the element to the block
  -If the return of the block is falsey, set falsey_found to true and store false_idx
  -increment the idx
-if falsey_found then return the slice of the array from false_idx to length
-else return an empty array

=end

def drop_while(array)
  falsey_found = false
  false_idx,idx = nil, 0

  while !falsey_found && idx < array.length
    if !yield(array[idx])
      falsey_found = true
      false_idx = idx
    end
    idx += 1
  end
  
  falsey_found ? array.slice(false_idx..-1) : []
end


p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| true } == []
puts drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
puts drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
puts drop_while([]) { |value| true } == []