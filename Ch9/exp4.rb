puts "Assignment ..."
puts
puts "Standard assignment ..."
instrument="piano"
puts instrument
MIDDLE_A = 440
puts MIDDLE_A
puts

puts "With an object attribute or element ref on the left side ..."
# Define a method name ending in an equals sign.
class ProjectList
  def initialize
    @projects = []
  end
  def projects=(list)
    @projects = list.map(&:upcase) #store list of names in uppercase
  end
  def [](offset)
    @projects[offset]
  end
end

list = ProjectList.new
list.projects = %w{ strip sand prime sand paint sand paint rub paint}
puts list [3] # "SAND"
puts list [4] # "PAINT"
puts list [0] # "STRIP"
p list [0..7]

puts
puts "Another with a return val that is overridden by the value of the parameter ..."
class Test
  def val=(val)
    @val = val
    return 99
  end
end
t = Test.new
result = (t.val = 2)
puts result
