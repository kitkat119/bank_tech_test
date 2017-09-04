class Transaction

  def initialize(date, cred_or_deb, amount, balance)
    @date = date
    @method = cred_or_deb
    @amount = amount
    @balance = balance
  end
end
