# A class should have a single responsibility, meaning it should do the smallest possible useful thing. This principle makes classes easier to maintain, understand, and extend.


# # Before: A class with multiple responsibilities
# class User
#   def initialize(name, email)
#     @name = name
#     @email = email
#   end

#   def send_welcome_email
#     # code to send email
#     puts "Sending welcome email to #{@name}"
#   end

#   def save
#     # code to save user to database
#     puts "Saving user #{@name} to database"
#   end
# end

# After: Refactored into multiple classes, each with a single responsibility
class User
  attr_reader :name, :email
  
  def initialize(name, email)
    @name = name
    @email = email
  end
end

class UserMailer
  def send_welcome_email(user)
    # code to send email
    puts "Sending welcome email to #{user.name}"
  end
end

class UserRepository
  def save(user)
    # code to save user to database
    puts "Saving user #{user.name} to database"
  end
end

user = User.new("Alice", "alice@example.com")
mailer = UserMailer.new
repository = UserRepository.new

mailer.send_welcome_email(user)
repository.save(user)