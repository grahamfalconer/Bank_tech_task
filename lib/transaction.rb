class Transaction
    attr_reader :amount, :date_created

  def initialize(amount)
    @amount = amount[:amount]
    @date_created = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

end
