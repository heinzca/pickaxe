puts "Calling a Method ..."
puts
class InvoiceWriter
  def initialize(order)
    @order = order
  end
  def write_on(output)
    write_header_on(output)
    write_body_on(output)
    write_totals_on(output)
  end

  # To make the methods following private (so they can't be called from outside of the object/class):
  private

  def write_header_on(output)
    # ...
  end
  def write_body_on(output)
    # ...
  end
  def write_totals_on(output)
    # ...
  end
end
puts
puts "Passing parameters to a method ... see comments"
# You can define parameters after the method name either with or without parentheses, but 'with' is recommended ...
# a = obj.hash # is same as
# a = obj.hash() #this.

puts
puts "Method return values ..."
puts "Single value return ..."
def meth_one
  "one"
end
puts meth_one

puts "Conditional value return ..."
def meth_two(arg)
  case
    when arg > 0 then "positive"
    when arg < 0 then "negative"
    else "zero"
  end
end
puts meth_two(23)
puts meth_two(0)
puts meth_two(-444)
puts

puts "Using return to exit form a loop ..."
def meth_three
  100.times do |num|
    square = num*num
    return num, square if square > 1000
  end
end
p meth_three
puts
num, square = meth_three
puts num
puts square
