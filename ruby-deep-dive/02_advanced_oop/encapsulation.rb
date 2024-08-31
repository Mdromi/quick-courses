# Encapsulation is the practice of hiding the internal state and requiring all interaction to be performed through an object’s methods.

class BankAccount
  # Getter method to access balance
  attr_reader :balance

  def initialize(balance)
    @balance = balance # Encapsulated data
  end

  # Method to deposit money, encapsulating how deposits work
  def deposit(amount)
    @balance += amount if valid_amount?(amount)
  end

  # Method to withdraw money, encapsulating how withdrawals work
  def withdraw(amount)
    if valid_amount?(amount) && sufficient_balance?(amount)
      @balance -= amount
    else
      puts "Invalid transaction: Please check the amount and your balance."
    end
  end

  private

  def valid_amount?(amount)
    amount > 0
  end

  def sufficient_balance?(amount)
    amount <= @balance
  end
end

account = BankAccount.new(1000)
account.deposit(200)         # => Adds 200 to balance
puts account.balance         # => 1200
account.withdraw(500)        # => Subtracts 500 from balance
puts account.balance         # => 700
account.withdraw(1000)       # => Invalid transaction: Please check the amount and your balance.
