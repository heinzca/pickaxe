puts "Splats and assignment ..."
puts
puts "splats on rhs of assignment ..."
a,b,c,d,e=*(1..2),3,*[4,5]
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts "e = #{e}"
puts
puts "another where last splat picks up remainder "
a, *b = 1,2,3 #a=1, b=[2,3]
puts "a = #{a}"
puts "b = #{b}"
puts
puts "and where no value in splat"
a, *b = 1     # a=1, b=[]
puts "a = #{a}"
puts "b = #{b}"
puts
puts "and where splat is not the last value"
*a, b = 1,2,3,4   #a=[1,2,3,],b=4
c,*d,e = 1,2,3,4  #c=1, d=[2,3],e=4
f,*g,h,i,j=1,2,3,4  #f=1,g=[],h=2,i=3,j=4
puts
puts "and using a raw *"
first,*,last = 1,2,3,4,5,6 #first =1, last=6

puts
puts "nested assignment ..."
puts "example 1"
a,(b,c),d=1,2,3,4
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts
puts "example 2"
a,(b,c),d=[1,2,3,4]
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts
puts "example 3"
a,(b,c),d=1,[2,3],4
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts
puts "example 4"
a,(b,c),d=1,[2,3,4],5
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts
puts "example 5"
a,(b,*c),d=1,[2,3,4],5
puts "a = #{a}"
puts "b = #{b}"
puts "c = #{c}"
puts "d = #{d}"
puts
puts "+= shortcut example ..."
class List
  def initialize(*values)
    @list = values
  end
  def +(other)
    @list.push(other)
  end
end
a=List.new(1,2)
a+=3
print a
