require 'account'

describe Account do
  it 'has a starting balance of 0' do
    account = Account.new
    expect(account.balance).to eq 0
  end

  it 'has storage for transactions' do
    account = Account.new
    expect(account.transactions).to eq []
  end

  it 'knows my latest transaction' do
    account = Account.new
    account.deposit(2000)
    expect(account.latest_transaction.amount).to eq 2000
  end

  it 'If a user deposits, it adds amount to account balance' do
    account = Account.new
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

  it 'If a user does a withdraw, it deducts amount from account balance' do
    account = Account.new
    account.deposit(1000)
    account.withdrawl(500)
    expect(account.balance).to eq 500
  end

  it 'If a user tries to withdrawl more then what it is available, an error is thown' do
    account = Account.new
    account.deposit(500)
    expect(account.withdrawl(1000)).to eq "Account has insufficient funds"
  end

end
