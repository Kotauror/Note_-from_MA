# Test-drive the bank example:
#
# Bank
#   - get_balance
#   - credit_account(date, amount)
#   - debit_account(date, amount)
#   - print_statement
# First organise it into one class only.
#
# Then, when all your tests are green, reorganise it.
#
# This will also involve reorganising your tests!

class Bank
  def initialize
    @amount_debit = 0
    @amount_credit = 0
  end

  def credit_account(amount)
    @amount_credit += amount
  end

  def debit_account(amount)
    @amount_debit += amount
  end

  def balance
    return @amount_credit - @amount_debit
  end

  def print_balance
    puts balance()
  end
end

ben = Bank.new
ben.credit_account(500)
ben.debit_account(100)
ben.print_balance
