class Transaction
    attr_reader :amount, :date_created, :type, :balance_after_transaction

  def initialize(amount)
    @type = ''
    @amount = amount[:amount]
    @date_created = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
    @balance_after_transaction = ''
  end

end
