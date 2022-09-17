=begin

Requirements:
-listen for something(block)
-if you hear something (block) then record it
-output the most recent recording using #play method

Examples:

Data Structures:

Algorithm:

=end

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen 
    record(yield) if block_given?
  end

  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"