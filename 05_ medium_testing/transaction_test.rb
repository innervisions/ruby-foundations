require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def test_prompt_for_payment
    input = StringIO.new("50\n")
    output = StringIO.new
    transaction = Transaction.new(40)
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 50, transaction.amount_paid
  end
end
