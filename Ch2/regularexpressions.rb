# # Example
# line = gets
# if line =~ /Perl|Python/
# puts "Scripting language mentioned: #{line}"
# end


# # The part of a string matched by a regular expression can be replaced with different text using one of Ruby’s substitution methods:
# line = gets
# newline = line.sub(/Perl/, 'Ruby') # replace first 'Perl' with 'Ruby'
# newerline = newline.gsub(/Python/, 'Ruby') # replace every 'Python' with 'Ruby'
# puts newline
# puts newerline


# You can replace every occurrence of Perl and Python with Ruby using this:
line = gets
newline = line.gsub(/Perl|Python/, 'Ruby')
puts newline
