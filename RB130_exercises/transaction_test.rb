require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @trans = Transaction.new(20)
  end

  def test_prompt_for_payment_sufficient_pay
    input = StringIO.new("25\n")

    # simulates the output
    output = StringIO.new
    @trans.prompt_for_payment(input: input, output: output)

    # capturing the output but doesn't do anything with it
    # capture_io do 
    #   @trans.prompt_for_payment(input: input)
    # end

    # my solution (eliminated the output already)
    # assert_output("You owe $20.\nHow much are you paying?\n") do
    #   @trans.prompt_for_payment(input: input)
    # end

    assert_equal(25, @trans.amount_paid)
  end
end

# input = StringIO.new("30\n")
# transaction.prompt_for_payment(input: input)

# input = StringIO.new("30\n")
# number = input.gets.chomp
# puts "The number was #{number}!"   # prints "The number was 30!"