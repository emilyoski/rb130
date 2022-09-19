require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @text = File.open('smpl_text.txt')
    @read_text = @text.read
    @our_text = Text.new(@read_text)
  end

  def test_swap
    num_a = @read_text.chars.count('a')
    num_e = @read_text.chars.count('e')
    
    evaluated_text = @our_text.swap('a', 'e')

    assert_equal((num_a + num_e), evaluated_text.chars.count('e'))
  end

  def test_word_count
    assert_equal(72, @our_text.word_count)
  end

  def teardown
    @text.close
  end
end