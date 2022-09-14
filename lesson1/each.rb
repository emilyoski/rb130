def each(arr)
  counter = 0

  while counter < arr.length
    yield(arr[counter])
    counter += 1
  end

  arr
end

array = [1,2,3]

each(array) { |el| puts el }
