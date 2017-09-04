class Account

  attr_reader :balance, :name, :number

  def initialize(name, account_number,transactionList_class = TransactionList)
    @balance = 0
    @name = name
    @number = account_number
    @list = transactionList_class.new
  end

  def deposit_money(amount)
    @balance += amount
    @list.add_transaction(Time.now.strftime('%D'), "credit", amount, @balance)
  end

  def withdraw_money(amount)
    @balance -= amount
    @list.add_transaction(Time.now.strftime('%D'), "debit", amount, @balance)
  end
end
