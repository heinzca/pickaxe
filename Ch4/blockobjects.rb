# This example creates a Proc object in one instance method and stores it in an instance variable.
# It then invokes the prov from a second instance method.
# It allows you to pass in a block that is then called by the object.

class ProcExample
  def pass_in_block(&action)
    @stored_proc = action
  end
  def use_proc(parameter)
    @stored_proc.call(parameter)
  end
end

eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}"}
eg.use_proc (99)

puts
# There is a built in method that does this called lambda
bo = ProcExample.new
bo = lambda { |param| puts "You called me with #{param}"}
bo.call 99
bo.call "boop boop"
