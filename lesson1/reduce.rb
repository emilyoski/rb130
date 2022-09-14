def reduce(arr, accum = arr[0].class.new)
  counter = 0

  while counter < arr.length
    new_accum = yield(accum, arr[counter])
    accum = new_accum
    counter += 1
  end
  
  accum
end


p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'


p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']