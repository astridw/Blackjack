require bundler
bunder.require

puts "In 6 days, it will be #{6.days.from_now}"


puts "what d yu wan to search for?"
search = gets
results Geocoder.search(search)
