puts "Splat! Expanding collections in method calls ..."

def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

puts five(1,2,3,4,5)
puts five(1,2,3,*['a','b'])
puts five(*['a','b'],1,2,3)
puts five(*(10..14))
puts five(*[1,2],3,*(4..5))
puts

puts "Making blocks more dynamic ..."
print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)

if operator =~/^t/
  # puts ((1..10).collect {|n| n*number }.join(", "))
  calc = lambda {|n| n*number}
else
  # puts ((1..10).collect {|n| n+number }.join(", "))
  calc = lambda {|n| n+number}
end
puts((1..10).collect(&calc).join(", "))
