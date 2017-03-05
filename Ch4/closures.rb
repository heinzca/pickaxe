# Example of a closure - parameter remains accessible to a block even though it is out of scope by the time the block is called. e.g. 'thing'
puts "Example of a closure"
puts
def n_times(thing)
  lambda {|n| thing * n}
end


p1 = n_times(23)
puts p1.call(3)
puts p1.call(4)

p2 = n_times("Hello ")
puts p2.call(5)

puts
# The -> form is more compact than lambda ands seems to vbe in favour when you wnat to pass one or more Proc objects to a method.
puts "Example using an alternative notation"
proc1 = -> arg{puts "In proc1 with #{arg}"}
proc2 = -> arg1,arg2{puts "In proc2 with #{arg1} and #{arg2}"}
proc3 = -> (arg1, arg2) {puts "In proc3 with #{arg1} and #{arg2}"}

proc1.call "ant"
proc2.call "bee", "cat"
proc3.call "dog", "elk"

puts
puts "Example if clause using similar notation"

def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val < 2, -> {puts "#{val} is small"}, -> {puts "#{val} is big"}
end

puts
puts "Example while which evaluates the condition each time around the loop"

def my_while(cond, &body)
  while cond.call
    body.call
  end
end

a = 0

my_while -> {a<3} do
  puts a
  a+=1
end
