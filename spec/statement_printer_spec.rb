describe StatementPrinter do
  subject(:statementPrinter) { described_class.new(account1) }
  let(:account1) { double :account, name: name, number: random_number, list: transactionList }
  let(:transaction) { double :transaction, date: '09/04/17', method: 'credit', amount: 200, balance: 200 }
  let(:transactionList) { double :transactionList, transactions: [transaction] }
  let(:name) { 'Joe Bloggs' }
  let(:random_number) { '10434911' }
  let(:bank) { double :bank }

  it 'prints the customer name and account number' do
    expect { statementPrinter.print_transactions }.to output(
      "A/c holder: #{account1.name}\nA/c number: #{account1.number}\nDate     || Credit || Debit || Balance\n#{transaction.date} || #{transaction.amount}    ||       || #{transaction.balance}\n"
    ).to_stdout
  end
end
