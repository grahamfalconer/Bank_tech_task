require 'transaction'

describe Transaction do
  let(:account) { Account.new }
  it 'Has an amount it was created with' do
    transaction = Transaction.new(amount: 1000)
    expect(transaction.amount).to eq 1000
  end

  it 'Has the time it was created' do
    transaction = Transaction.new(amount: 1000)
    current_date = Time.now.strftime('%Y-%d-%m %H:%M:%S %Z')
    expect(transaction.date_created).to eq current_date
  end

  it 'knows if its type was Credit' do
    account.deposit(500)
    expect(account.latest_transaction.type).to eq 'Credit'
  end

  it 'knows if its type was Debit' do
    account.deposit(1000)
    account.withdrawl(500)
    expect(account.latest_transaction.type).to eq 'Debit'
  end

  it 'stores what the balance of the account was after a deposit' do
    account.deposit(1000)
    expect(account.latest_transaction.balance_after_transaction).to eq '1000'
  end

  it 'stores what the balance of the account was after a withdrawl' do
    account.deposit(1000)
    account.withdrawl(500)
    expect(account.latest_transaction.balance_after_transaction).to eq '500'
  end
end
