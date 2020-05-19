class Account

  attr_reader :balance, :transactions

  MINIMUM_BALANCE = 0

  def initialize
    @balance = MINIMUM_BALANCE
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new(amount: amount)
    transaction.type << 'Credit'
    @transactions << transaction
  end

  def withdrawl(amount)

  end

  def latest_transaction
    @transactions[-1]
  end

end
