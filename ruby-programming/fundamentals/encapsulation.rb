# Encapsulation:
# Encapsulation involves bundling data and methods that operate on that data within a single unit (class).

class BankAccount 
    attr_reader :balance

    def initialize(initial_balance) 
        @balance = initial_balance
    end

    def deposit(ammount)
        @balance += ammount
    end

    def withdraw(ammount)
        @balance -= ammount
    end
end

# Creating an instance of the class
account = BankAccount.new(1000)

# Accessing attributes
puts account.balance  # Output: 1000

# Calling methods
account.deposit(500)
account.withdraw(200)
puts account.balance  # Output: 1300