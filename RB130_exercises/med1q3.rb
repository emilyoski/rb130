=begin

-modify so the display/output of items is moved to a block
(implementation up to user of #gather method)

=end


items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items) if block_given?
  puts "Nice selection of food we have gathered!"
end

gather(items) { |food| puts "#{food.join(", ")}" }