class Statement
  attr_reader :column_descriptions

  def initialize
    @column_descriptions = 'date || credit || debit || balance'
  end
end