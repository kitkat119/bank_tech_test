class AccountList
  attr_reader :accounts

  def initialize
    @accounts = []
  end

  def add_account(account)
    @accounts << account
  end

  def get_account(customer_name)
    @accounts.find { |acc| acc.name == customer_name }
  end

end
