added_things = []

puts "Welcome to list builder++!"

puts "What can I do for you?"

addition = gets.strip

while addition != "quit"

	if addition.include?("remove")

		addition.slice!("remove ")

		added_things.delete(addition)

		puts "Removed! Your list is:"

		puts added_things.to_s

		addition = gets.strip

	else

		addition.slice! "add "

		added_things << addition

		puts "Added! Your list is:"

		puts added_things.to_s

		puts "What can I do for you?"

		addition = gets.strip

	end

end

puts "Bye!"