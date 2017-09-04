require 'account'

describe Account do
  subject(:account) { described_class.new }

  it 'has a starting balance of zero' do
    expect(account.balance).to eq(0)
  end
end
