=begin

Input: 2 arrays
-assume both input arrays have the same number of elements
Output: array
-built from the 2 input arrays
-each element is a 2-element array built from 1st element in 1st array and 2nd element in 2nd array
-array returned should be a new array
-input arrays should not be mutated

Examples:
nothing noted

Data Structure:
[1 4] [2 5] [3 6]
Array for the overall array
Built each individual 2 element array and put it into the overall array

Algorithm:
-Initialize the output array
-Starting with index 0 to (length of the array - 1)
  -Create an array with first array[idx], second array[idx]
  -Push that array into the output array
-Return the output array

=end

def zip(arr1, arr2)
  array = []
  0.upto(arr1.length - 1) do |idx|
    array << [arr1[idx], arr2[idx]]
  end
  array
end



puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]