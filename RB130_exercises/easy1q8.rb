=begin

-If any block returns true for any element then method returns false
-Otherwise, method will return true
-Method will stop searching the collection the first time the block returns true
-empty array should return true regardless of block 
-cannot use all any none one

=end

def none?(array)
  array.each do |ele|
    return false if yield(ele)
  end
  true
end

puts none?([1, 3, 5, 6]) { |value| value.even? } == false
puts none?([1, 3, 5, 7]) { |value| value.even? } == true
puts none?([2, 4, 6, 8]) { |value| value.odd? } == true
puts none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
puts none?([1, 3, 5, 7]) { |value| true } == false
puts none?([1, 3, 5, 7]) { |value| false } == true
puts none?([]) { |value| true } == true