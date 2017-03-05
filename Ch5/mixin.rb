# By 'including' the Debug module here, both the Phonograph and EightTrack classes gain access to the who_am_i? instance method.
# Note that the ruby include simply makes reference to a module.
# If the module is in a different file then you must use require or load.

puts "Mixin example - include a module within a class definition"

module Debug
  def who_am_i?
    "#{self.class.name} (id: #{self.object_id}): #{self.name}"
  end
end

class Phonograph
  include Debug
  attr_reader :name
  def initialize(name)
    @name = name
  end
  # ...
end

class EightTrack
  include Debug
  attr_reader :name
  def initialize(name)
    @name = name
  end
  # ...
end
ph = Phonograph.new("West End Blues")
et = EightTrack.new("Surrealistic Pillow")

puts ph.who_am_i?
puts et.who_am_i?
