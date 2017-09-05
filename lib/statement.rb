class Statement
  def initialize(account)
    @account = account
    @transactions = account.list.transactions
  end

  def all_transactions
    statement_header
    @transactions.each do |t|
      if t.method == 'credit'
        puts "#{t.date} || #{t.amount}    ||       || #{t.balance}\n"
      else
        puts "#{t.date} ||        || #{t.amount}    || #{t.balance}\n"
      end
    end
  end

  private

  def statement_header
    puts "A/c holder: #{@account.name}\nDate     || Credit || Debit || Balance"
  end
end
