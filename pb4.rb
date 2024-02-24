RSpec.describe BankAccount do
    describe "#deposit" do
      it "increases the balance by the deposit amount" do
        initial_balance = 100
        deposit_amount = 50
        bank_account = BankAccount.new(initial_balance)
  
        bank_account.deposit(deposit_amount)
  
        expect(bank_account.balance).to eq(initial_balance + deposit_amount)
      end
    end
  
    describe "#withdraw" do
      it "decreases the balance by the withdrawal amount if funds are available" do
        initial_balance = 100
        withdrawal_amount = 50
        bank_account = BankAccount.new(initial_balance)
  
        bank_account.withdraw(withdrawal_amount)
  
        expect(bank_account.balance).to eq(initial_balance - withdrawal_amount)
      end
  
      it "does not change the balance if insufficient funds" do
        initial_balance = 50
        withdrawal_amount = 100
        bank_account = BankAccount.new(initial_balance)
  
        bank_account.withdraw(withdrawal_amount)
  
        expect(bank_account.balance).to eq(initial_balance)
      end
    end
  
    describe "#balance" do
      it "returns the current balance" do
        initial_balance = 75
        bank_account = BankAccount.new(initial_balance)
  
        expect(bank_account.balance).to eq(initial_balance)
      end
    end
  end