describe Statement do
  subject(:statement) { described_class.new(account1) }
  let(:account1) { double :account, name: name, list: transactionList }
  let(:transaction) { double :transaction, date: '09/04/17', method: 'credit', amount: 200, balance: 200 }
  let(:transactionList) { double :transactionList, transactions: [transaction] }
  let(:name) { 'Joe Bloggs' }
  let(:bank) { double :bank }

  it 'outputs the customer transaction list' do
    expect { statement.all_transactions }.to output(
      "A/c holder: #{account1.name}\nDate     || Credit || Debit || Balance\n#{transaction.date} || #{transaction.amount}    ||       || #{transaction.balance}\n"
    ).to_stdout
  end
end
