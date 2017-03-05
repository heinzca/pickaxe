# Variables are simply pointers to an object
# In this example person2 points to person1 all the way through
person1 = "Tim"
person2 = person1
person1[0] = "J"
puts "person1 is #{person1}"
puts "person2 is #{person2}"

# In this example person2 is created a s duplicate of person1, so its a different string object with identical contents
person1 = "Tim"
person2 = person1.dup
person1[0] = "J"
puts "person1 is #{person1}"
puts "person2 is #{person2}"

# You can also prevent changes by freezing an object
person1 = "Tim"
person2 = person1
person1.freeze
person2[0] = "J"
