class Statement
  attr_reader :column_descriptions

  def initialize
    @column_descriptions = 'date || credit || debit || balance'
  end

  def format_transaction(transaction)
    if transaction.type == 'Credit'
        "#{transaction.date_created[0..9]} || #{transaction.amount} || || #{transaction.balance_after_transaction}"
    else
        "#{transaction.date_created[0..9]} || || #{transaction.amount}  || #{transaction.balance_after_transaction}"
    end
  end
end
