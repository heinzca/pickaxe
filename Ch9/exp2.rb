puts "Operator expressions ..."
puts
puts "Append to receiver example ..."
puts
class ScoreKeeper
  def initialize
    @total_score = @count = 0
  end
  def <<(score)
    @total_score += score
    @count += 1
    self
  end
  def average
    fail "No scores " if @count.zero?
    Float(@total_score) / @count
  end
end

scores = ScoreKeeper.new
scores << 10 << 20 << 40
puts "Average = #{scores.average}"
puts
puts "Square bracket as a method example ..."
puts
class SomeClass
  def []=(*params)
    value = params.pop
    puts "Indexed with #{params.join(', ')}"
    puts "value = #{value.inspect}"
  end
end

s=SomeClass.new
s[1] = 2
s['cat','dog']= 'enemies'
