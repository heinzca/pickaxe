# Using IO.foreach to open for reading, call iterator and close file
IO.foreach("testfile.txt") {|line| puts line }

puts
# Read into a string or an array of lines
str = IO.read("testfile.txt")
print "#{str.length}\n"
print "#{str[0,40]}\n"
puts

arr=IO.readlines("testfile.txt")
print "#{arr.length}\n"
print "#{arr}\n"
print "#{arr[0]}\n"
