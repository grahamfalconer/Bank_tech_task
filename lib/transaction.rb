class Transaction
    attr_reader :amount, :time_created

  def initialize(amount)
    @amount = amount[:amount]
    @time_created = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

end
