# Module example
# This example is given poriginally as modules in different files. Modified here to sit in this one file.
puts "Modules example:"
module Trig
  PI = 3.141592654
  def Trig.sin(x)
    puts PI * 9
    # ..
  end

  def Trig.cos(x)
    # ..
  end
end

module Moral
  VERYBAD = 0
  BAD = 1
  def Moral.sin(badness)
    puts "Youre bad"
    # ..
  end
end

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERYBAD)
puts
