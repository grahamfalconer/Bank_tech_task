class Account

  attr_reader :balance

  MINIMUM_BALANCE = 0

  def initialize
    @balance = MINIMUM_BALANCE
  end

end