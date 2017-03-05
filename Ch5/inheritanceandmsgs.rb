puts "Understanding class inheritance"
class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

p = Parent.new
p.say_hello

class Child < Parent
end
c = Child.new
c.say_hello

puts "Superclass of #{Child} is #{Child.superclass}"
puts "Superclass of #{Parent} is #{Parent.superclass}"
puts "Superclass of #{Object} is #{Object.superclass}"
puts "Superclass of #{BasicObject} is #{BasicObject.superclass}"

puts

puts "Overriding a class method example"
class Person
  def initialize(name)
    @name = name
  end
end
p = Person.new("Michael")
puts p

puts
puts "Defining to_s in the same class"
class Person
  def initialize(name)
    @name = name
  end
  def to_s
    "Person named #{@name}"
  end
end
p = Person.new("Michael")
puts p
