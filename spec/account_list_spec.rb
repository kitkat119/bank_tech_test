describe AccountList do
  subject(:accountList) { described_class.new }
  let(:bank) { double :bank }
  let(:name) { 'Joe Bloggs' }
  let(:account1) { double :account, name: name, list: transactionList }
  let(:transactionList) { double :transactionList, transactions: [transaction] }
  let(:transaction) { double :transaction, date: '09/04/17', method: 'credit', amount: 200, balance: 200 }

  it 'adds accounts to the array' do
    accountList.add_account(name)
    expect(accountList.accounts).not_to be_empty
  end

  it 'gets the account for the specified name' do
    accountList.add_account(account1)
    expect(accountList.get_account(name)).to eq accountList.accounts.first
  end
end
