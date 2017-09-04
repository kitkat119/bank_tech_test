class Bank

  attr_reader :accounts, :customersAccount

  def initialize(statementPrinter_class = StatementPrinter)
    @accounts = []
    @statement = statementPrinter_class
    @customersAccount = ""
  end

  def create_account(name, random_number = rand.to_s[2..9])
    @accounts << Account.new(name, random_number)
    get_new_account_number
  end

  def find_account(customer_name)
    @customersAccount = @accounts.find { |acc| acc.name == customer_name }
  end

  def print_statement(account = @customersAccount)
    @statement.new(account).print_transactions
  end

  private
  def get_new_account_number
    return "#{@accounts.last.number} is your new account number"
  end
end
