require 'transaction'

describe Transaction do

  it 'Has an amount it was created with' do
    transaction = Transaction.new(amount: 1000)
    expect(transaction.amount).to eq 1000
  end
  it 'Has the time it was created' do
    transaction = Transaction.new(amount: 1000)
    expect(transaction.date_created).to eq Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

  it 'knows if its type was credit or debit' do
    account = Account.new
    account.deposit(500)
    expect(account.latest_transaction.type).to eq 'Credit'
  end

end
