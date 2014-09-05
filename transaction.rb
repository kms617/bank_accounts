# You must define a Transaction class. It should have the following behaviors:

# deposit? that returns true if the transaction was a deposit as opposed to a withdrawal
# summary that returns a string describing the transaction

class Transaction
  attr_reader :date, :amount, :description

  def initialize(date, amount, description)
    @date = date
    @amount = amount
    @description = description
  end

  def deposit?
    @amount > 0
  end

  def type
    if deposit?
      "DEPOSIT"
    else
      "WITHDRAWAL"
    end
  end

  def summary
   "$#{sprintf('%.2f', @amount.abs)} #{type} #{@date} - #{@description}"
  end

end
