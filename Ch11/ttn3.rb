require 'open-uri'

# open('http://pragprog.com') do |f|
#   puts f.read.scan(/<img alt=".*?" src="(.*?)"/m).uniq[0,3]
# end

page = open('http://pragprog.com/titles/ruby3/programming-ruby-1-9').read
if page =~ %r{<title>(.*?)</title>}m
  puts "Title is #{$1.inspect}"
end
