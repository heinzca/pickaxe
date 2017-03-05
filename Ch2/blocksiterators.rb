
def call_block
puts "Start of method"
yield
yield
yield
puts "End of method"
end

call_block { puts "In the chocka block" }

puts


def who_says_what
yield("Dave", "hello")
yield("Andy", "goodbye")
yield("Barry","oi you!")
end
who_says_what {|person, phrase| puts "#{person} says #{phrase}"}

puts

animals = %w( ant bee cat dog ) # create an array
animals.each {|animal| puts "#{animal}s are great" } # iterate over the contents

puts

# other looping construct examples
[ 'cat', 'dog', 'horse' ].each {|name| print name, " " }
5.times { print "*" }
3.upto(6) {|i| print i }
('a'..'e').each {|char| print char }

puts
