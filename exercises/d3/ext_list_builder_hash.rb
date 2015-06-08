# must check to see if key already exists in hash set
# If it does not, add, set value to 1
# IF not, increment that key's value by 1
# If remove, if value is 1, remove key, value
# If remove, if value is > 1, decrease key's value by 1

added_things = {}
puts "Welcome to list builder!"
puts "What can I do for you?"
addition = gets.strip
while addition != "quit"
	if addition.include?("remove")
		addition.slice!("remove ")
		added_things[addition] = added_things[addition] - 1
		puts "Removed! Your container has:"
		puts added_things.to_s
		addition = gets.strip
	else
		addition.slice! "add "
		if added_things.has_key?(addition)
			added_things[addition] = added_things[addition] + 1
		else
			added_things[addition] = 1
		end
		puts "Added! Your container has:"
		puts added_things.to_s
		puts "What can I do for you?"
		addition = gets.strip
	end
end
puts "Bye!"