# # one line block example
# some_array.each {|value| puts value * 3}
#
# # multi line block example
# sum = 0
# other_array.each do |value|
#   sum += value
#   puts value / sum
# end

sum = 0
[1,2,3,4].each do |value|
  square = value * value
  sum += square
end
puts sum

puts
# Example of variable declared outside block
value = "some shape"
[1,2].each {|value| puts value}
puts value

puts
# Example with block-local variable using ";" before the local variable

square = "some shape"

sum = 0
[1,2,3,4].each do |value; square|
  square = value * value
  sum += square
end
puts sum
puts square
