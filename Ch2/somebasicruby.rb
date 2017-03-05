# First simple program

def say_goodnight(name)
  result = "Good night, " + name
  return result
end
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")
puts (say_goodnight("Heinz"))

puts "And good night,\nGrandma"

# Using expression interpolation
# When using double-quotes only
def say_goodnight(name)
  result = "Good night, #{name} "
  return result
end
puts say_goodnight('Pa')

# With added capitalize method
def say_goodnight(name)
  result = "Good night, #{name.capitalize} "
  return result
end
puts say_goodnight('uncle')

# Value returned is the value of the last expression evaluated
def say_goodnight(name)
  result = "Good night, #{name.capitalize} "
end
puts say_goodnight('ma')
