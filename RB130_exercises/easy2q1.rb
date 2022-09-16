=begin

Input: 3 numbers and a block
-First number represents first value in the range
-Second number represents last value in the range
-Third number represents the "step" taken for each iteration

Output: Execution of the block
-What should the return value be?
  -should return the range operated on?
  -return the range produced from the step function? 
-return the range operated on/manipulated
-the step value should be applied to each iteration
-block should be yielded to on each iteration
-first and final value should also be passed to the block
-cannot operate on a range

-Examples:
1, 4, 7, 10 
value = 1
1 (+3/step) 
4 (passed to the block) 
value = 4

Data Structure:
-Array for the "range" from first value to last value
-Integer representing and not a range used

Algorithm:
-Continue the process until the value is greater than the last argument
  -identify the value (first)
  -pass the value to the block
  -step the value 
-return the bounds used?
=end

def step(first, last, stp)
  result = first
  while result <= last do
    yield(result)
    result += stp
  end
  [first, last]
end


step(1, 10, 3) { |value| puts "value = #{value}" }