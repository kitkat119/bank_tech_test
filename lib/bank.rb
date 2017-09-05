class Bank
  attr_reader :accounts, :customersAccount

  def initialize(statement_class = Statement, printer_class = Printer)
    @accounts = []
    @statement = statement_class
    @customers_account = ''
    @printer = printer_class
  end

  def create_account(name)
    @accounts << Account.new(name)
  end

  def find_account(customer_name)
    @customers_account = @accounts.find { |acc| acc.name == customer_name }
  end

  def request_statement(account = @customers_account)
    # @statement.new(account).print_transactions
    @printer.new(@statement.new(account)).print_statement

  end
end
