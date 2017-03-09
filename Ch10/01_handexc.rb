# # First example
# require 'open-uri'
# web_page = open("http://pragprog.com/podcasts")
# output = File.open("podcasts.html", "w")
# while line = web_page.gets
#   output.puts line
# end
# output.close

# Second example
require 'open-uri'
page = "podcasts"
file_name = "#{page}.html"
web_page = open("http://pragprog.com/#{page}")
output = File.open(file_name, "w")
begin
  while line = web_page.gets
    output.puts line
  end
  output.close
rescue Exception
  STDERR.puts "Failed to download #{page}: #{$!}"
  output.close
  File.delete(file_name)
  raise
end

# Third example with multiple rescues ...
begin
  eval string
rescue SyntaxError, NameError => boom
  print "String doesn't complile: "+ boom
rescue StandardError => bang
  print "Error running script: "+ bang
end

# Example using ensure which executes regardless of normal or exceptional exit
f = File.open("testfile")
begin
  #  .. process
rescue
  #  .. handle error
ensure
  f.close
end
