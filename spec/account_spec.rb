require 'account'

describe Account do
  it 'has starting balance of 0' do
    account = Account.new
    expect(account.balance).to eq 0
  end
end