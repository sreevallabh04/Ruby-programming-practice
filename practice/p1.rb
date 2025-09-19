#Task:
# Create a BankAccount class that stores the account owner and balance.
# • Allow depositing and withdrawing money (with simple validation).
# • Allow transferring money to another account.
# • balance should be read-only (cannot be directly changed).

class BankAccount
  # owner should be read/write; balance should be read-only
  attr_accessor :owner
  attr_reader :balance

  def initialize(owner, opening_balance = 0.0)
    @owner = owner
    @balance = opening_balance.to_f
  end

  def deposit(amount)
    amount = amount.to_f
    if amount > 0
      @balance += amount
      true
    else
      puts "Invalid amount"
      false
    end
  end

  def withdraw(amount)
    amount = amount.to_f
    if amount <= 0
      puts "Invalid amount"
      false
    elsif amount > @balance
      puts "Insufficient funds"
      false
    else
      @balance -= amount
      true
    end
  end

  def transfer_to(other_account, amount)
    return false unless other_account.is_a?(BankAccount)
    amount = amount.to_f
    if withdraw(amount)
      other_account.deposit(amount)
      true
    else
      false
    end
  end

  def to_s
    formatted = format('%.2f', @balance)
    "#{@owner}: ₹#{formatted}"
  end
end

# --- Sample usage (for testing) ---
acc1 = BankAccount.new("Alice", 1000)
acc2 = BankAccount.new("Bob", 200)
acc1.deposit(500)
acc2.withdraw(300) # should print "Insufficient funds"
acc1.transfer_to(acc2, 400)
puts acc1 # => Alice: ₹1100.00
puts acc2 # => Bob: ₹600.00
    
