require 'socket'
s = UDPSocket.new
s.bind("", 44444)
100.times do
  text, sender = s.recvfrom(50000)
  puts text
end
