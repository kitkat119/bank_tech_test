describe Printer do
  subject(:printer) { described_class.new(statement) }
  let(:statement) { double :statement, account: account }
  let(:account) { double :account, name: name, list: transactionList }
  let(:name) { 'Joe Bloggs' }
  let(:transactionList) { double :transactionList, transactions: [transaction] }
  let(:transaction) { double :transaction, date: '09/04/17', method: 'credit', amount: 200, balance: 200 }

  it 'prints the statement' do
    expect(statement).to receive(:all_transactions)
    printer.print_statement
  end
end
