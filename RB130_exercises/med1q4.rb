=begin

# splat operator example
raven, finch, *raptors = %w(raven finch hawk eagle)
p raven # => 'raven'
p finch # => 'finch'
p raptors  # => ['hawk','eagle']

Requirements:
- Array as input argument
- method yield contents of array to block
- block should: 
  - assign block variables to ignore first 2 elements
  - groups all remaining elements in "raptors" array

Examples:
- example above -> element @ idx2 has splat operator

Data Structure:
Array input -> block will return a "raptors array"

Algorithm:
-Accept an array input and block
-Pass the array to the block
-Create a raptors array in block
-Assign the element at idx2 to splat operator 

=end

def collect_raptors(array)
  p yield(array)
end

birds = %w(raven finch hawk eagle)

# collect_raptors(birds) do |arr| 
#   raven, finch, *raptors = arr
#   raptors
# end

collect_raptors(birds) do |rvn, fch, *raptors|
  raptors
end