=begin

Write a method that returns a list of all of the divisors 
of the positive integer passed in as an argument. 
The return value can be in any sequence you wish.

Input: Integer
-Will be positive
-Doesn't appear to have a "max"
Ouput: Array
-Contains list of integers
-Integers are divisors of the input number
-Can be in any sequence
-Will include 1 in the divisors and itself

Examples:
12 -> [1 2 3 4 6 12]
98 -> [1 2 7 14 49 98]

Data Structure:
Array for output (integer input)
Iterating through and determining what is a divisor (remainder of zero)

Algorithm:
-From 1 to that number, 
-Determine the divisor (remainder is zero when dividing input integer by that number)
-Store the divisors in an array

=end

def divisors(num)
  (1..num).to_a.select { |value| num%value == 0 }
end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute