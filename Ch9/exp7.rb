puts "Conditional execution ..."
puts
puts "comparison operators ..."
puts "  without an != method defined ..."
class T
  def ==(other)
    puts "comparing self == #{other}"
    other == "value"
  end
end
t = T.new
p(t == "value")
p(t != "value")
puts

puts "  with an != method defined ..."
class T
  def ==(other)
    puts "comparing self == #{other}"
    other == "value"
  end
  def !=(other)
    puts "comparing self != #{other}"
    other != "value"
  end

end
t = T.new
p(t == "value")
p(t != "value")
