# More about methods examples
puts "Defining a method ...\n\n"
puts "Example with default values and overriding them by supplying..."
def cool_dude(arg1="Miles", arg2="Coltrane", arg3="Roach")
  "#{arg1}, #{arg2}, #{arg3}."
end

puts cool_dude
puts cool_dude("Bart")
puts cool_dude("Bart","Elwood")
puts cool_dude("Bart","Elwood","Linus")
puts

puts "Example where default arg references a prev arg ..."
def surround(word, pad_width=word.length/2)
  "[" * pad_width + word + "]" * pad_width
end

puts surround("elephant")
puts surround("fox")
puts surround("fox", 10)

puts "Splat variable example ..."
def varargs(arg1, *rest)
  "arg1=#{arg1}. rest=#{rest.inspect}"
end

puts varargs("one")
puts varargs("one","two")
puts varargs("one","two","three")
puts

puts "Another splat with splat in middle ..."
def split_apart(first, *splat, last)
  puts "First: #{first.inspect}, splat: #{splat.inspect}, last: #{last.inspect}"
end

split_apart(1,2)
split_apart(1,2,3)
split_apart(1,2,3,4,5,6,7)
puts

puts "Methods and blocks example ..."
def double(p1)
  yield(p1*2)
end

puts double(3) {|val| "I got #{val}"}
puts double("tom") {|val| "Then I got #{val}"}
puts

puts "Example calling a block later ..."
class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end
  def get_tax(amount)
    "#{@name} on #{amount} = #{ @block.call(amount)}"
  end
end

tc = TaxCalculator.new("Sales tax") {|amt| amt * 0.075}

puts tc.get_tax(100)
puts tc.get_tax(250)
