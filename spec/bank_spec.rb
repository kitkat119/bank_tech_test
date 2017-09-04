describe Bank do

  subject(:bank) { described_class.new() }
  let(:name) { "Joe Bloggs" }
  let(:random_number) { "10434911" }
  let(:account1) { double :account, name: name, number: random_number }


  it 'can create an account and add it to the accounts array' do
    bank.create_account(name, random_number)
    expect(bank.accounts).not_to be_empty
  end

  it 'tells the customer the account number for their newly created account' do
    expect(bank.create_account(name, random_number)).to eq "#{random_number} is your new account number"
  end

  it 'can find the customer account based on their name' do
    bank.instance_variable_set(:@accounts, [account1])
    expect(bank.find_account(name)).to eq account1
  end
end
