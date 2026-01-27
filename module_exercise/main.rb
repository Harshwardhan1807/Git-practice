require_relative "modules/logger"
require_relative "modules/validate"

class User
  extend LoggerModule
  include ValidateModule

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def register
    if valid_email?(@email) && valid_password?(@password)
      User.log("User #{@name} registered successfully")
      true
    else
      User.log("Registration failed for #{@name}")
      false
    end
  end
end

user = User.new("Alice", "abc@example.com", "password123")
user.register

# user.log("This is a test log message.")
User.log("This is a test log message.")