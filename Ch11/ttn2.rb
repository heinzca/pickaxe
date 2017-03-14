puts "This gets a list of images on the book's home page ..."

require 'net/http'

http = Net::HTTP.new('pragprog.com', 80)
response = http.get('/book/ruby3/programming-ruby-1-9')

if response.message == "OK"
  puts "boo"
  puts response.body.scan(/<img alt=".*?" src="(.*?)"/m).uniq[0,3]
end
