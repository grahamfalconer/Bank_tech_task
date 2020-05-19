class Transaction
    attr_reader :amount, :date_created, :type

  def initialize(amount)
    @type = ''
    @amount = amount[:amount]
    @date_created = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
  end

end
