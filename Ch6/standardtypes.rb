
puts "Numbers ... \n\n"
num = 10001
4.times do
  puts "#{num.class}: #{num}"
  num*=num
end

puts "\nLooping using numbers"
3.times     {print "X "}
1.upto(5)   {|i| print i, " "}
99.downto(95)   {|i| print i, " "}
50.step(80,5)   {|i| print i, " "}

10.downto(7).with_index {|num, index| puts "#{index}: #{num}"}

puts "\nStrings ...\n\n"
puts "Seconds/day: #{24*60*60}"
puts "#{'Ho! '*3}Merry Christmas!"
puts "Safe level is #$SAFE"

puts "\nEncoding ...\n\n"
plain_string = "dog"
puts "Ruby version is: #{RUBY_VERSION}"
puts "Encoding of #{plain_string.inspect} is #{plain_string.encoding}"
