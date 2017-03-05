
puts "Hash example using strings"
h = {"dog" =>"canine", "cat" => 99, "donkey" => "asinine"}
puts h.length
puts h['dog']
h ["cow"] = "bovine"
puts h['cow']
puts h
h [12] = "dodecine"
puts h

puts
puts "Hash example using symbols"
h = {:dog => "canine", :cat => "feline", :donkey => "asinine"}
puts h


puts
puts "Hash example using symbols but with colon at end and no =>"
h = {dog: "canine", cat: "feline", donkey: "asinine"}
puts h
puts h.count
puts "Keys:" + h.keys.to_s
puts "Values: "+ h.values.to_s
