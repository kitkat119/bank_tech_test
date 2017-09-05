describe Bank do
  subject(:bank) { described_class.new(accountList) }
  let(:name) { 'Joe Bloggs' }
  let(:printer) { double :printer }
  let(:account1) { double :account, name: name, list: transactionList }
  let(:transaction) { double :transaction, date: '09/04/17', method: 'credit', amount: 200, balance: 200 }
  let(:transactionList) { double :transactionList, transactions: [transaction] }
  let(:accountList) { double :accountList, accounts: [account1] }
  let(:customersAccount) { account1 }

  it 'can create an account' do
    expect_any_instance_of(AccountList).to receive(:add_account)
    bank.create_account(name)
  end

  it 'can find the customer account based on their name' do
    expect_any_instance_of(AccountList).to receive(:get_account)
    bank.find_account(name)
  end

  it 'allows the customer to request their account statement' do
    expect_any_instance_of(Printer).to receive(:print_statement)
    bank.request_statement(account1)
  end
end
