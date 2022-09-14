=begin

Input: Array
-Contains sorted array of integers
-Can be single integer or multiple integers
-Can be negative or positive
-Assuming valid array input
Output: Array
-Contains all missing integers between argument's first and last elements
-Numerical order
-Need to be listed in order 
-Negative and positive numbers
-No missing numbers will be an empty array
-Need to include 0

Examples:
[-3 -2 1 5] -> [-1 0 2 3 4]

Data Structures:
-Array input and array output
-Create a standard array of the numbers that should be present?
-Compare the standard array and input array -> 
then we will find the output array based on the difference

[-3 -2 1 5] 
[-3 -2 -1 0 1 2 3 4 5]
[-1 0 2 3 4]

Algorithm:
-Create a "standard" array, counting numerically from first ele to last ele
-Subtract the input array 

=end

def missing(input)
  (input[0]..input[-1]).to_a - input
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []