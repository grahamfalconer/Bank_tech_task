# The Statement class formats its transactions and prepares statement
class Statement
  attr_reader :column_descriptions, :full

  def initialize
    @column_descriptions = 'date || credit || debit || balance'
    @full = [column_descriptions]
  end

  def format_transaction(transaction)
    if transaction.type == 'Credit'
      "#{transaction.date_created[0..9]} || #{transaction.amount} || || #{transaction.balance_after_transaction}"
    else
      "#{transaction.date_created[0..9]} || || #{transaction.amount}  || #{transaction.balance_after_transaction}"
    end
  end

  def prepare_statement(transactions)
    transactions.each do |transaction|
      @full << format_transaction(transaction)
    end
  end
end