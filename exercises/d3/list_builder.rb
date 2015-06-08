added_things = []

puts "Welcome to list builder!"

while true

	puts "What can I add?"

	addition = gets.strip

	added_things << addition

	puts "Added! Your list is:"

	puts added_things.to_s

end


