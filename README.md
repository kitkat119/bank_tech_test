# Bank

A practice tech test, in which I have practiced OOP and TTD. I have used the Single Responsibility Principle when breaking down the classes, as follows:

__Account__    - holds the balance and accepts deposits and withdrawals of money

__AccountList__   - stores the new accounts to its array and finds specific elements of that array

__Bank__    - allows creation of an account, lets the customer find their account in order to deposit/withdraw money and also request a statement.

__Printer__    - prints the statement       

__Statement__    - holds the information contained in the statement

__Transaction__    - holds information about each transaction

__TransactionList__    - contains all instances of transaction

#### To use:

Enter the following in the command line:

```
git clone https://github.com/kitkat119/bank_tech_test
cd bank_tech_test
bundle
./bin/load_files_and_start_irb
bank = Bank.new   #creates the bank
bank.create_account("Joe Bloggs")   #create your account using your name
myAccount = bank.find_account("Joe Bloggs")   #find your account
myAccount.balance   #check your balance    
myAccount.deposit_money(100)    #use to deposit money into your account
myAccount.withdraw_money(25)    #use to withdraw money from your account
bank.request_statement(myAccount)   #get a statement of all your transactions
```

#### To test:
Enter in the command line:
```
rspec
```

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
