
puts "Hey bru (South African for bro). Let's compute some quadform."

puts "Give me an A: "

a = gets.to_f

puts "Give me a B: "

b = gets.to_f

puts "Give me a C: "

c = gets.to_f

puts "beep computing boop boop..."

puts "x is either"

puts (-b + Math.sqrt(b*b - 4*a*c))/ (2*a)

puts "or"

puts (-b - Math.sqrt(b*b - 4*a*c))/ (2*a)

puts "Goodbye!"