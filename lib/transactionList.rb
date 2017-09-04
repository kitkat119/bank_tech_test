class TransactionList

  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_transaction(date, cred_or_deb, amount, balance)
    @transactions << Transaction.new(date, cred_or_deb, amount, balance)
  end
end
