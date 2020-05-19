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
    @balance =+ amount
  
  end

  def withdrawl(amount)
    transaction = Transaction.new(amount: amount)
    transaction.type << 'Debit'
    @transactions << transaction
  end

  def latest_transaction
    @transactions[-1]
  end

end
