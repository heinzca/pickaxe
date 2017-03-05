puts "Example using multiple enumerators"
a = [1,3,"cat"]
h = {dog: "canine", fox: "vulpine"}

# Create enumerators
enum_a = a.to_enum
enum_h = h.to_enum

puts enum_a.next
puts enum_h.next.to_s
puts enum_a.next
puts enum_h.next

puts
puts "Example creating enumerator using internal iterator"
a = [1,3,"cat"]
enum_a = a.each #create an enumerator using an internal iterator
puts enum_a.next
puts enum_a.next
puts enum_a.next

puts
puts "Example using loop"
# Terminates cleanly when it runs out of values inside the loop
short_enum = [1,2,3].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

puts
puts "Enumerators as objects example"

result = []
['a','b','c'].each_with_index {|item, index| result << [item, index] }
puts result
puts result.to_s

puts
puts "With Index example"

result = []
"cat".each_char.with_index {|item, index| result << [item, index]}
puts result
puts result.to_s

puts
puts "Example creating enumerator explicitly"
enum = "cat".enum_for(:each_char)
p enum.to_a

puts
puts "Example with parameters"
enum_in_threes = (1..10).enum_for(:each_slice, 3)
p enum_in_threes.to_a
