describe Account do
  subject(:account) { described_class.new(name, account_number) }
  let(:amount) { 50 }
  let(:name) { "Joe Bloggs"}
  let(:account_number) { "1234567" }

  it 'belongs to a person' do
    expect(account.name).to eq(name)
  end

  it 'has a random account number' do
    expect(account.number).to eq(account_number)
  end

  it 'has a starting balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'can accept a cash deposit' do
    expect{ account.deposit_money(amount) }.to change { account.balance }.by(amount)
  end

  it 'can have money withdrawn from it' do
    expect{account.withdraw_money(amount)}.to change { account.balance }.by(-amount)
  end
end
