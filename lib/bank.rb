class Bank
  attr_reader :accounts, :customersAccount

  def initialize(statementPrinter_class = StatementPrinter)
    @accounts = []
    @statement = statementPrinter_class
    @customers_account = ''
  end

  def create_account(name, random_number = rand.to_s[2..9])
    @accounts << Account.new(name, random_number)
    print_new_account_number
  end

  def find_account(customer_name)
    @customers_account = @accounts.find { |acc| acc.name == customer_name }
  end

  def print_statement(account = @customers_account)
    @statement.new(account).print_transactions
  end

  private

  def print_new_account_number
    return "#{@accounts.last.number} is your new account number"
  end
end
