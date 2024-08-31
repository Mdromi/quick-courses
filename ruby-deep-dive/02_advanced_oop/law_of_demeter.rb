# The Law of Demeter, also known as the principle of least knowledge, states that a method should only call methods on objects that it directly interacts with.

# Before: Violating the Law of Demeter
# class Order
#   attr_reader :customer
#   def initialize(customer)
#     @customer = customer
#   end
#   def total_ammount
#     customer.wallet.balance - customer.wallet.rewards
#   end
# end

# After: Complying with the Law of Demeter
class Wallet
  attr_reader :balance, :rewards
  def initialize(balance, rewards)
    @balance = balance
    @rewards = rewards
  end
  def net_balance
    @balance - @rewards
  end
end

class Customer
  attr_reader :wallet
  def initialize(wallet)
    @wallet = wallet
  end
end

class Order
  attr_reader :customer
  def initialize(customer)
    @customer = customer
  end
  def total_amount
    customer.wallet.net_balance
  end
end

wallet = Wallet.new(100, 10)
customer = Customer.new(wallet)
order = Order.new(customer)
puts order.total_amount  # Output: 90