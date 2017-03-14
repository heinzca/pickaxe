# # Returns lines in file if called in context of the file like: ruby copy.rb testfile.txt
# while line = gets
#   puts line
# end

# Explicitly opens file and reads from it, withour needing to specify on cmd line
File.open("testfile.txt") do |file|
  while line = file.gets
    puts line
  end
end
