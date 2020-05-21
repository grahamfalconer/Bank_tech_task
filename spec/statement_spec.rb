require 'statement'

describe Statement do
  it 'prints a row containing descriptions of each column' do
    statement = Statement.new
    expect(statement.column_descriptions).to eq 'date || credit || debit || balance'
  end

  it 'can format a transaction into statement format, date first' do
    account = Account.new
    account.deposit(2000)
    transaction = account.latest_transaction
    statement = Statement.new
    expect(statement.format_transaction(transaction)[0..3]).to eq '2020'
  end
end
