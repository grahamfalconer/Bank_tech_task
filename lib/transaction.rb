class Transaction
    attr_reader :amount

  def initialize(amount)
    @amount = amount[:amount]
  end

end
