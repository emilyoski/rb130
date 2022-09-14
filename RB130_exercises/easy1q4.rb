=begin

Write a method that returns a list of all of the divisors 
of the positive integer passed in as an argument. 
The return value can be in any sequence you wish.

=end

puts divisors(1) == [1]
puts divisors(7) == [1, 7]
puts divisors(12) == [1, 2, 3, 4, 6, 12]
puts divisors(98) == [1, 2, 7, 14, 49, 98]
puts divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute