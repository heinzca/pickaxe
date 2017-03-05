# iterator example using yield
def two_times
  yield
  yield
end
two_times {puts "Hello"}

# example returning fibonacci numbers
# yield has a parameter i1
def fib_up_to(max)
  i1, i2 = 1,1  #parallel assignment (i1 = 1, i2 = 1)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end

fib_up_to(1000) {|f| print f, " "}

puts

# each is probably the simplest iterator
[1,3,5,7,9].each {|i| puts i}

puts
# collect is another iterator (also known as map) which returns the results as another array
p ["H","A","L"].collect {|x| x.succ}
