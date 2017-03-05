puts "Ranges as sequences ...\n\n"

print (1..10).to_a
puts
print ('bar'..'bat').to_a
puts
enum = ('bar'..'bat').to_enum
puts enum.next
puts enum.next
puts

puts "Iterating over ranges ..."

digits = 0..9
puts
p digits.include?(5)
puts
p digits.max
puts
p digits.reject {|i| i < 5}
puts
p digits.inject(:+)

puts "Spaceship example ..."
class PowerOfTwo
  attr_reader :value
  def initialize(value)
    @value = value
  end
  def <=>(other)
    @value <=> other.value
  end
  def succ
    PowerOfTwo.new(@value + @value)
  end
  def to_s
    @value.to_s
  end
