# Note the "w" which opens the file for writing
File.open("output.txt", "w") do |file|
  file.puts "Hello amigo... gringo"
  file .puts "1 + 2 ="#{1+2}
end

# Now read the file in and orint its content to STDOUT
puts File.read("output.txt")
