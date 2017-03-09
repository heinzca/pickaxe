puts "Loops and Iterators ..."
puts

3.times do
  print "Ho! "
end

puts

0.upto(9) do |x|
  print x, " "
end

puts
0.step(12,3) {|x| print x, " "}

puts
[1,1,2,3,5].each {|val| print val, " "}

puts "'for' example ..."
puts
for i in ['fee', 'fi', 'fo','fum']
  print i, " "
end
print "\n\n"
for i in 1..3
  print i, " "
end
puts
puts "for based on each method ..."
class Periods
  def each
    yield "Classical"
    yield "Jazz"
    yield "Rock"
  end
end

periods = Periods.new
for genre in periods
  print genre, " "
end
puts
puts "break and next example ..."
# next skips to the end of the loop effectively starting teh next iteration
i=0
loop do
  i+=1
  next if i < 3
  print i
  break if i > 4
end
