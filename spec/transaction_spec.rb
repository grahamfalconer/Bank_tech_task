require 'transaction'

describe Transaction do

  it 'Has an amount it was created with' do
    transaction = Transaction.new(amount: 1000)
    expect(transaction.amount).to eq 1000
  end
  it 'Has the time it was created' do
    transaction = Transaction.new(amount: 1000)
    current_date = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
    expect(transaction.date_created).to eq current_date
  end

  it 'knows if its type was Credit' do
    account = Account.new
    account.deposit(500)
    expect(account.latest_transaction.type).to eq 'Credit'
  end

  it 'knows if its type was Debit' do
    account = Account.new
    account.deposit(1000)
    account.withdrawl(500)
    expect(account.latest_transaction.type).to eq 'Debit'
  end

  it 'If a user deposits, it adds amount to account balance' do
    account = Account.new
    account.deposit(1000)
    expect(account.balance).to eq 1000
  end

  it 'If a user does a withdraw, it removes amount account balance' do
    account = Account.new
    account.deposit(1000)
    account.withdrawl(500)
    expect(account.balance).to eq 500
  end

end
