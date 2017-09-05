class Printer
  def initialize(statement)
    @statement = statement
  end

  def print_statement
    @statement.all_transactions
  end
end
