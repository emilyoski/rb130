require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(50)
    @transaction = Transaction.new(25)
  end

  def test_accept_money
    assert_equal(50, @register.total_money)
    @transaction.amount_paid = 25
    assert_equal(75, @register.accept_money(@transaction))
  end

  def test_change
    @transaction.amount_paid = 50
    assert_equal(25, @register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $25.\n") { @register.give_receipt(@transaction) }
  end
end