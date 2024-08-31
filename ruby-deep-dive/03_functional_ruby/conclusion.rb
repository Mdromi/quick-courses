# A class representing a collection of users with methods to manipulate the collection

class UserCollection
  attr_accessor :users
  def initialize(users = [])
    @users = users
  end
  # Adding a user using a block
  def add_user
    user = yield
    @users << user
  end
  # Filtering users using a lambda
  def filter_users(criteria)
    criteria_lambda = lambda { |user| criteria.call(user)}
    @users.select(&criteria_lambda)
  end
  # Transforming users using a proc
  def transform_users(proc_object)
    @users.map(&proc_object)
  end
end

# User class
class User
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
  def to_s
    "#{name}, Age: #{age}"
  end
end

# Example usage
users = UserCollection.new
# Adding users using a block
users.add_user { User.new("Alice", 30) }
users.add_user { User.new("Bob", 20) }
users.add_user { User.new("Charlie", 25) }
# Filtering users using a lambda
adult_users = users.filter_users(lambda { |user| user.age >= 21 })
puts "Adult users:"
adult_users.each { |user| puts user }
# Transforming users using a proc
uppercase_names_proc = Proc.new { |user| User.new(user.name.upcase, user.age) }
uppercase_users = users.transform_users(uppercase_names_proc)
puts "\nUsers with uppercase names:"
uppercase_users.each { |user| puts user }