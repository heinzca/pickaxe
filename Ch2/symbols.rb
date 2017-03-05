# Symbols are frequently used as keys in hashes. We could write our previous example as this:
inst_section = {
:cello => 'string',
:clarinet => 'woodwind',
:drum => 'percussion',
:oboe => 'woodwind',
:trumpet => 'brass',
:violin => 'string'
}
puts inst_section[:oboe] # => "woodwind"
puts inst_section[:cello] # => "string"
# Note that strings aren't the same as symbols...
puts inst_section['cello'] # => nil

# In fact, symbols are so frequently used as hash keys that Ruby has a shortcut syntax: you can use name: value pairs to create a hash if the keys are symbols:

inst_section = {
cello: 'string',
clarinet: 'woodwind',
drum: 'percussion',
oboe: 'woodwind',
trumpet: 'brass',
violin: 'string'
}
puts "An oboe is a #{inst_section[:oboe]} instrument"
