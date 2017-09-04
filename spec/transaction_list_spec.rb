describe TransactionList do

  subject(:transactionList) { described_class.new }
  let(:date) { Time.now.strftime('%D') }
  let(:method) { "credit" }
  let(:amount) { 50 }
  let(:balance) { 100 }

  it 'starts off with an empty array of transactions' do
    expect(transactionList.transactions).to eq []
  end

  it 'adds new transactions to the list' do
    transactionList.add_transaction(date, method, amount, balance)
    expect(transactionList.transactions).not_to be_empty
  end
end
