puts "Parallel assigment ..."
puts
puts "initial assignment"
a,b = 1,2
puts "a = #{a}"
puts "b = #{b}"

a,b = b,a
puts "values swapped ..."
puts "a = #{a}"
puts "b = #{b}"

puts
puts "Example using comma separated values ..."
# if the lhs contains a single element, the values are assigned to that element.
a = 1,2,3,4
print a
puts
b =[1,2,3,4]
print b
puts
# if the lhs contains a comma, ruby matches value on rhs against successive elements on the lhs
puts "two values on lhs"
a,b = 1,2,3,4 # a=1, b=2
puts "a = #{a}"
puts "b = #{b}"
puts
puts "one value and a comma on lhs"
c, = 1,2,3,4
puts "c = #{c}"
