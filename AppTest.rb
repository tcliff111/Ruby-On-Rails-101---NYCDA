require "geocoder"

result = Geocoder.search("72.89.67.69").first

puts result.address