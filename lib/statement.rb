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
    puts @column_descriptions
    transactions.each do |transaction|
      puts format_transaction(transaction)
    end
  end
end
=begin
  def print
    @account.transactions.each do |transaction|
        @full << format_transaction(transaction)
    end
    p @full
  end

end

statement = Statement.new
statement.print
=end
