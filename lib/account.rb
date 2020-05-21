
require_relative 'transaction'
require_relative 'statement'

# My programme's main object for interraction
class Account
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new(amount: amount)
    transaction.type << 'Credit'
    transaction.balance_after_transaction << (@balance + amount).to_s
    @transactions << transaction
    @balance += amount
  end

  def withdrawl(amount)
    if amount <= @balance
      transaction = Transaction.new(amount: amount)
      transaction.type << 'Debit'
      transaction.balance_after_transaction << (@balance - amount).to_s
      @transactions << transaction
      @balance -= amount
    else
      'Account has insufficient funds'
    end
  end

  def latest_transaction
    @transactions[-1]
  end

  def print_statement
    statement = Statement.new
    statement.prepare_statement(@transactions)
    puts statement.full.join("\n")
  end

end
