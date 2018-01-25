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
    print "date || credit || debit || balance"
    puts
    print "#{@amount_credit[0][1]} || #{@amount_credit[0][0]}|| || #{balance}"
  end

end


ben = Bank.new
ben.credit_account(1000, "10/01/2012")
ben.credit_account(2000, "13/01/2012")
ben.debit_account(500, "14/01/2001")
ben.print_balance
