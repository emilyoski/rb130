def compute(input)
  return_value = yield(input) if block_given?
  return_value + 1
end



#puts compute { 5 + 3 } == 8
#puts compute { 'a' + 'b' } == 'ab'
#puts compute(3) == 'Does not compute.'
puts compute(3) { |num| num + num } 
#puts compute('xyz') { |str| str * 2 } == 'xyzxyz'

