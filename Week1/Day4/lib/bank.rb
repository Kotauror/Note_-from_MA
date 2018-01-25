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
    @amount_debit = []
    @amount_credit = []
  end

  def credit_account(amount, date)
    @amount_credit.push([amount, date])
  end

  def debit_account(amount, date)
    @amount_debit.push([amount, date])
  end

  def balance
    for i in 0..@amount_debit.length do
      return @amount_credit[0][i] - @amount_debit[0][i]
    end
  end

  def print_balance
    puts @amount_debit
    puts @amount_credit
    puts balance()
  end

end


ben = Bank.new
ben.credit_account(500, "11/20/2001")
ben.debit_account(100, "10/9/2001")
ben.credit_account(500, "11/20/2001")
ben.debit_account(100, "10/9/2001")
ben.print_balance
