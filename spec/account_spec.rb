require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:amount) { 50 }

  it 'has a starting balance of zero' do
    expect(account.balance).to eq(0)
  end

  it 'can accept a cash deposit' do
    expect{account.deposit_money(amount)}.to change { account.balance }.by(amount)
  end

  it 'can have money withdrawn from it' do
    expect{account.withdraw_money(amount)}.to change { account.balance }.by(-amount)
  end
end
