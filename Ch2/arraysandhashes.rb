a = [1,'cat',3.14] #array with 3 elements
puts "The first elemnt is #{a[0]}"
# set the third element
a[2]=nil
puts "The array is now #{a.inspect}"

# Array example
a=['ant','bee','cat','dog','elk']
puts a[0]
puts a[3]

# shortcut array without having to use quotes and commas
a=%w{ant bee cat dog elk}
puts a[0]
puts a[3]

# Hash examples
inst_section = {
  'cello'=>'string',
  'clarinet'=>'woodwind',
  'drum'=>'percussion',
  'oboe'=>'woodwind',
  'trumpet'=>'brass',
  'violin'=>'string'
}
p inst_section['oboe']
p inst_section['cello']
p inst_section['bassoon']

# using a hash as a counter
histogram = Hash.new(0) #The default value is zero
histogram['ruby'] = histogram['ruby']+1
puts histogram['ruby']
