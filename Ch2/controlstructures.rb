
# if control structure example

today = Time.now
if today.saturday?
puts "Do chores around the house"
elsif today.sunday?
puts "Relax"
else
puts "Go to work"
end

# # while example
# num_pallets = 0
# weight = 0
# while weight < 100 and num_pallets <= 5
#   pallet = next_pallet()
#   weight += pallet.weight
#   num_pallets += 1
# end

# while line = gets
#   puts line.downcase
# end
