describe Bank do
  subject(:bank) { described_class.new }
  let(:name) { 'Joe Bloggs' }
  let(:printer) { double :printer }
  let(:account) { double :account, name: name, list: transactionList }
  let(:transaction) { double :transaction, date: '09/04/17', method: 'credit', amount: 200, balance: 200 }
  let(:transactionList) { double :transactionList, transactions: [transaction] }

  it 'can create an account and add it to the accounts array' do
    bank.create_account(name)
    expect(bank.accounts).not_to be_empty
  end

  it 'can find the customer account based on their name' do
    bank.create_account(name)
    expect(bank.find_account(name)).to eq bank.accounts.first
  end

  it 'allows the customer to request their account statement' do
    expect_any_instance_of(Printer).to receive(:print_statement)
    bank.request_statement(account)
  end
end
