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

end
