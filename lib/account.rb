class Account

  attr_reader :balance, :transactions

  MINIMUM_BALANCE = 0

  def initialize
    @balance = MINIMUM_BALANCE
    @transactions = []
  end

  def deposit(amount)
  end

  def latest_transaction
  end

end
