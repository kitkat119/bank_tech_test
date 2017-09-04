class Bank

  attr_reader :accounts

  def initialize
    @accounts = []
  end

  def create_account(name, random_number = rand.to_s[2..9])
    @accounts << Account.new(name, random_number)
    get_new_account_number
  end

  def find_account(customer_name)
    @accounts.find { |acc| acc.name == customer_name }
  end

  private
  def get_new_account_number
    return "#{@accounts.last.number} is your new account number"
  end
end
