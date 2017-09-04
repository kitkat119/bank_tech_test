class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit_money(amount)
    @balance += amount
  end

  def withdraw_money(amount)
    @balance -= amount
  end

end
