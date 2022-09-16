=begin

Input: array
-yield each element to the array to the block
-yield each associated index to the block 
-first argument is the element
-second argument is the index
Output: array
-should return the original collection

-set index to 0
-Iterate through the array
  -pass the element and the index to the block
  -increment the index

=end

def each_with_index(array)
  index = 0
  array.each do |ele|
    yield(ele, index)
    index += 1
  end
end


result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]