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

Further exploration:
-Prime?
  -Range from 2 up to the number (minus 1) and all should not have a remainder of 0
-Determine all the factors
  -Count up from 1, skip if number is not prime
    -If that number is divisible by that prime number, divide and keep the result
    -If not, skip to the next prime number 
-Multiply the factors to determine the potential possibilities 

=end

def prime?(num)
  (2...num).to_a.all? { |value| num%value != 0 }
end

def factors(num)
  factors = []
  divisor = 1

  loop do
    divisor += 1
    if prime?(divisor)
      next if num%divisor != 0
      num = num/divisor
      factors << divisor
      divisor = 1
    end
    break if prime?(num)
  end
  factors << num
  factors
end

def divisors(num)
  (1..num).to_a.select { |value| num%value == 0 }
end

p factors(24)
p factors(99400891)

# puts divisors(1) == [1]
# puts divisors(7) == [1, 7]
# puts divisors(12) == [1, 2, 3, 4, 6, 12]
# puts divisors(98) == [1, 2, 7, 14, 49, 98]
# puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
#puts divisors(999962000357) == [1, 999979, 999983, 999962000357]