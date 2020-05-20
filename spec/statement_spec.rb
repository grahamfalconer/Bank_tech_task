require 'statement'

describe Statement do
  it 'prints a row containing descriptions of each column' do
    statement = Statement.new
    expect(statement.column_descriptions).to eq 'date || credit || debit || balance'
  end
end
