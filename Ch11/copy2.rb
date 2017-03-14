# This returns the dump of each line
File.open("testfile.txt") do |file|
  file.each_line {|line| puts "Got #{line.dump}"}
end
puts
# This breaks the line at every e
File.open("testfile.txt") do |file|
  file.each_line("e") {|line| puts "Got #{line.dump}"}
end
