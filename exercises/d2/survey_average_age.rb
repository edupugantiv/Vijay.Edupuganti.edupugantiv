
puts "Hello!"

puts "How old are you?"

age = gets

puts "How old is your mom?"

mom_age = gets

puts "How old is your dad?"

dad_age = gets

average_age = (age.to_i + mom_age.to_i + dad_age.to_i) / 3

puts "Thanks for answering my creepy questions! The average age of your family is #{average_age} years old!"

puts "Goodbye!"