class Account

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new(amount: amount)
    transaction.type << 'Credit'
    @transactions << transaction
    @balance += amount
  
  end

  def withdrawl(amount)
    transaction = Transaction.new(amount: amount)
    transaction.type << 'Debit'
    @transactions << transaction
    @balance -= amount
  end

  def latest_transaction
    @transactions[-1]
  end

end
