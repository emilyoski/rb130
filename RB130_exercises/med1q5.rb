items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

# number 1 output
# gather(items) do |*food1 , food2|
#   puts "#{food1.join(", ")}"
#   puts food2
# end

# number 2 output
# gather(items) do |food1, *food2, food3|
#   puts food1
#   puts "#{food2.join(", ")}"
#   puts food3
# end

# number 3 output
# gather(items) do |food1, *food2 |
#   puts food1
#   puts "#{food2.join(", ")}"
# end

# number 4 output
# gather(items) do |food1, food2, food3, food4|
#   puts "#{food1}, #{food2}, #{food3}, and #{food4}"
# end