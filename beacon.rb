require './lib/beacon'
require './lib/ibeacon'

ibeacon = Beacon::Magic.new

while true
  data = ibeacon.parse_advertisement
  puts "UUID: #{data[:entered][:uuid]}"
  puts "RSSI: #{data[:entered][:rssi]}"
  puts "Power: #{data[:entered][:power]}"
end