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
    @amount_credit = []
    @amount_debit = []
  end

  def credit_account(amount, date)
    balance_result = balance()
    puts balance_result
    hash = {"amount" => amount, "date" => date, "balance" => balance_result}
    @amount_credit.push(hash)
  end

  def debit_account(amount, date)
    balance_result = balance()
    puts balance_result
    hash = {"amount" => amount, "date" => date, "balance" => balance_result}
    @amount_debit.push(hash)
  end

  def balance
    array_amount_credit = [0]
    array_amount_debit = [0]
    @amount_credit.each {|hash|
      array_amount_credit.push(hash["amount"])
    }
    @amount_debit.each {|hash|
      array_amount_debit.push(hash["amount"])
    }
    credit_sum = array_amount_credit.inject(:+)
    debit_sum = array_amount_debit.inject(:+)

    return credit_sum - debit_sum
  end

  def print_stuff
    print "date || credit || debit || balance"
    puts
    # print "#{@amount_credit[0]["date"]} || #{@amount_credit[0]["amount"]}|| ||#{@amount_credit[0]["amount"]} "
    print "#{@amount_credit[0]["date"]} || #{@amount_credit[0]["amount"]}|| || #{@amount_credit[0]["balance"]} "
    puts
    # print "#{@amount_credit[1]["date"]} || #{@amount_credit[1]["amount"]}|| ||#{@amount_credit[0]["amount"] + @amount_credit[1]["amount"]} "
    print "#{@amount_credit[1]["date"]} || #{@amount_credit[1]["amount"]}|| ||  #{@amount_credit[1]["balance"]} "
    puts
    # print "#{@amount_debit[0]["date"]} || #{@amount_debit[0]["amount"]}|| || #{@amount_credit[0]["amount"] + @amount_credit[1]["amount"]- @amount_debit[0]["amount"].to_i} "
    print "#{@amount_debit[0]["date"]} || #{@amount_debit[0]["amount"]}|| ||  #{@amount_debit[0]["balance"]}"

  end

end


ben = Bank.new
ben.credit_account(1000, "10/01/2012")
ben.credit_account(2000, "13/01/2012")
ben.debit_account(500, "14/01/2001")
ben.print_stuff
