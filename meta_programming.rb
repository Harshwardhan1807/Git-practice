class User
  PERMISSIONS = [:read, :write, :delete]
  
  def initialize(name, email, permission_level)
    @name = name
    @email = email
    @permission_level = permission_level
  end

  PERMISSIONS.each do |permission|
    define_method("#{permission}?") do
      if @permission_level.include?(permission)
        puts "#{@name} has #{permission} permission."
      else
        puts "#{@name} does not have #{permission} permission."
      end
    end
  end
end

a = User.new("Alice", "abc@example.com", [:read, :write])

per = :write?
a.send(per)