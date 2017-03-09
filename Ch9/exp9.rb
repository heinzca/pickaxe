# puts "Case expressions ..."
# puts
# puts "first form example ..."
# case
# when song.name =="Misty"
#   puts "Not again!"
# when song.duration > 120
#   puts "Too long!"
# when Time.now.hour > 21
#   puts "It's too late"
# else
#   song.play
# end
# puts
#
# puts "second form example ..."
# case command
# when "debug"
#   dump_debug_info
#   dump_symbols
# when /p\s+(\w+)/
#   dump_variable($1)
# when "quit", "exit"
#   exit
# else
#   print "Illegal command: #{command}"
# end
# puts

puts "case with then on a single line ..."
year = 1910
kind =  case year
        when 1850..1889 then  "Blues"
        when 1890..1909 then  "Ragtime"
        when 1910..1929 then  "New Orleans Jazz"
        when 1930..1939 then  "Swing"
        else                  "Jazz"
        end
puts "A song from #{year} is defined as #{kind}"
