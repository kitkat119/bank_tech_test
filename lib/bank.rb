class Bank
  attr_reader :accounts, :customers_account

  def initialize(statement_class = Statement, printer_class = Printer, accountList_class = AccountList)
    @statement = statement_class
    @customers_account = ''
    @printer = printer_class
    @accountList = accountList_class.new
  end

  def create_account(name)
    @accountList.add_account(Account.new(name))
  end

  def find_account(customer_name)
    @customers_account = @accountList.get_account(customer_name)
  end

  def request_statement(account = @customers_account)
    @printer.new(@statement.new(account)).print_statement
  end
end
