require_relative 'transaction'

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
    if amount <= @balance
        transaction = Transaction.new(amount: amount)
        transaction.type << 'Debit'
        @transactions << transaction
        @balance -= amount
    else
        return "Account has insufficient funds"
    end
  end

  def latest_transaction
    @transactions[-1]
  end

end
