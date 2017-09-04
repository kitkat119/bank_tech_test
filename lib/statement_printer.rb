class StatementPrinter
  def initialize(account)
    @account = account
    @transactions = account.list.transactions
  end

  def print_transactions
    print_statement_header
    @transactions.each do |t|
      if t.method == 'credit'
        puts "#{t.date} || #{t.amount}    ||       || #{t.balance}\n"
      else
        puts "#{t.date} ||        || #{t.amount}    || #{t.balance}\n"
      end
    end
  end

  private

  def print_statement_header
    puts "A/c holder: #{@account.name}\nA/c number: #{@account.number}\nDate     || Credit || Debit || Balance"
  end
end
