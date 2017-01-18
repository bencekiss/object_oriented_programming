class BankAccount

  attr_reader :balance, :interest_rate
  def initialize(balance, interest_rate)
    @balance  = balance
    @interest_rate = interest_rate

  end

  def deposit=(amount)
    @balance += amount.to_i
  end

  def withdraw=(amount)
    @balance -= amount
  end

  def gain_interest
    @balance += (@balance * @interest_rate)
  end
end
