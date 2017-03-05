puts "Finding a string with regular expressions ..."
str = "cat and dog"

if str =~ /cat/
  puts "There's a cat here somewhere."
end
puts

puts "Changing strings with patterns ..."
str = "Dog and Cat"
new_str = str.sub(/Cat/, "Gerbil")
puts "Let's go to the new #{new_str} for a pint."
puts

puts "Modifying the original with gsub ..."
str = "now is the time"
str.sub!(/i/,"*")
str.gsub!(/t/, "T")
puts str
puts
