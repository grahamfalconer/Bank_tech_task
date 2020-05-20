require 'statement'

describe Statement do
  it 'prints a row containing descriptions of each column' do
    statement = Statement.new
    expect(statement.column_descriptions).to eq 'date || credit || debit || balance'
  end

  it 'can format a transaction into statement format' do
    account = Account.new
    statement = Statement.new
    account.deposit(2000)
    transaction = account.latest_transaction
    expect(statement.format_transaction(transaction)).to eq '2020-20-05 || 2000 || || 2000'
  end
end
