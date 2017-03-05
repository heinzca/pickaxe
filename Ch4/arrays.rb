a=[3.14159, "pie",99]
puts a.class   #=>Array
puts a.length  #=>3
puts a[0]
puts a[1]
puts a[2]
puts a[3]

b=Array.new
puts b.class
puts b.length
b[0] = "second"
b[1] = "array"
puts b.to_s
puts

a = [1,3,5,7,9]
puts a.to_s
puts "reference single positions"
puts a[-1]
puts a[-2]
puts a[-3]
puts "reference based on count form a position"
puts a[1,3].to_s
puts a[3,1].to_s
puts a[-3,2].to_s
puts a[-5,5].to_s
puts
puts "reference using ranges"
puts a[1..3].to_s # 2 period includes end position
puts a[1...3].to_s # 3 period does not
puts a[3..3].to_s
puts a[-3..-1].to_s
puts
puts "setting values"
a[1] = 'bat'
a[-3]='cat'
a[3]=[9,8]
a[6]=99 # gaps are filled with nil
puts a.to_s
puts
puts "setting multi values"
a=[1,3,5,7,9]
puts a.to_s

a[2,2] = "cat"
puts a.to_s

a[2,0] = "dog"
puts a.to_s

a[1,1] = [9,8,7]
puts a.to_s

a[0..3]=[]
puts a.to_s

a[5..6]=99,88
puts a.to_s

puts
puts "using as a stack - with push and pop"
stack=[]
puts stack.to_s
stack.push "red"
puts stack.to_s
stack.push "green"
puts stack.to_s
stack.push "blue"
puts stack.to_s
stack.pop
puts stack.to_s
stack.pop
puts stack.to_s
stack.pop
puts stack.to_s

puts
puts "FIFO queue - with push and shift"
queue =[]
puts queue.to_s
queue.push "red"
puts queue.to_s
queue.push "green"
puts queue.to_s
queue.shift
puts queue.to_s
queue.shift
puts queue.to_s

puts
puts "First and last"
array =[1,2,3,4,5,6,7]
puts array.to_s
puts "First 4: " + array.first(4).to_s
puts "First: " + array.first.to_s
puts "Last 4: " + array.last(4).to_s
puts "Last: " + array.last.to_s
