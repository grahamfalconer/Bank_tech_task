require 'transaction'

describe Transaction do

  it 'Has an amount it was created with' do
    transaction = Transaction.new(amount: 1000)
    expect(transaction.amount).to eq 1000
  end
  it 'Has the time it was created' do
    transaction = Transaction.new(amount: 1000)
    expect(transaction.time_created).to eq Time.now
  end

end
