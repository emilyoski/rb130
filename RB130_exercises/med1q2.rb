=begin

Requirements:
-Input is text from a textfile (read in)
  # readlines gives us an array with each line as an element with newline character end
  # readlines gives us an element of newline character indicating paragraphs
-Output is X paragraphs, X lines, X words
-process method:
  -read the text file
  -pass the text to the block provided
-everything either part of the process method or part of the blocks

Examples: nothing noted

Data Structure:
Array for the text file read in 
Block could provide the criteria for what we are counting? (paragraphs, lines, words?)
Process will count and block should provide

Algorithm:
-Process method 
  -Read in the text file
  -Create an element for each line
  -Have an empty string for each element that is a paragraph
  -Initialize a count to 0
  -Iterate through the array for text file
    -yield each element to the block and compare what our 'criteria' is in the block?

-Block
  -has the criteria 

=end
system 'clear'

class TextAnalyzer
  def process
    text_file = File.open("sample_text.txt")
    text = text_file.readlines
    overall_count = 0
    count = 0
    type = nil

    text.each do |line|
      count = yield(line)
      overall_count += count[0]
    end
    text_file.close
    puts "#{overall_count} #{count[1]}"
  end
end

analyzer = TextAnalyzer.new

# paragraphs
analyzer.process do |paragraph| 
  num = (paragraph == "\n" ? 1 : 0)
  [num, "paragraphs"]
end

# lines
analyzer.process { |line| [1, "lines"] }

# words
analyzer.process { |words| [words.split(" ").count, "words"] }

