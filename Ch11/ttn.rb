puts "Talking to Networks ..."

puts "This gets info about pp website using HTTP OPTIONS request"

require 'socket'

client = TCPSocket.open('127.0.0.1','www')
client.send("OPTIONS /~dave/ HTTP/1.0\n\n", 0) # 0 means standard packet
puts client.readlines
client.close

puts
