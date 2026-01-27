class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def walk
    puts "This is a parent class method."
  end

  private
  def private_method # Can only be called within the child class or parent class
    "This is a private method."
  end
end

class Dog < Animal

  def method_missing(name, *args)
    puts "You called: #{name}"
    puts "Args: #{args.inspect}"
  end

  def bark
    puts "Woof! My name is #{@name}."
  end

  def walk
    puts "This is a child class method."
  end

end

dog = Dog.new("Buddy")
dog.bark
dog.walk
dog.private_method
