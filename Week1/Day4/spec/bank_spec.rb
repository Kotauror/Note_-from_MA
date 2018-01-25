require 'bank'

describe Bank do

  it { is_expected.to respond_to :balance, :print_balance}
  it { is_expected.to respond_to(:debit_account).with(1).argument }
  it { is_expected.to respond_to(:credit_account).with(1).argument }

  describe 'credit_account' do
    it 'changes credit_account ' do
      bank = Bank.new
      expect(bank.credit_account(50)).to eq (50)
      expect(bank.credit_account(10)).to eq (60)
    end
  end

  describe 'debit_account' do
    it 'changes debit_account' do
      bank = Bank.new
      expect(bank.debit_account(50)).to eq (50)
      expect(bank.debit_account(10)).to eq (60)
    end
  end

  describe 'balance' do
    it 'give the balance' do
      bank = Bank.new
      expect(bank.credit_account(50)).to eq (50)
      expect(bank.debit_account(10)).to eq (10)
      expect(bank.balance).to eq (40)
    end
  end

end
