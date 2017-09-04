class Account

  attr_reader :balance, :name, :number

  def initialize(name, account_number)
    @balance = 0
    @name = name
    @number = account_number
  end

  def deposit_money(amount)
    @balance += amount
  end

  def withdraw_money(amount)
    @balance -= amount
  end

end
