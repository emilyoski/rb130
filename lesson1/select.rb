array = [1, 2, 3, 4, 5]

def select(arr)
  counter = 0
  selected_arr = []

  while counter < arr.length
    if yield(arr[counter])
      selected_arr << arr[counter]
    end
    counter += 1
  end

  selected_arr
end


p select(array) { |num| num.odd? }      # => [1, 3, 5]
p select(array) { |num| puts num }      # => [], because "puts num" returns nil and evaluates to false
p select(array) { |num| num + 1 }       # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true