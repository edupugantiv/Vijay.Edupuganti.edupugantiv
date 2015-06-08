# in while loop, increment value

puts "Enter a number:"
input = gets.strip.to_i
i = 1
first_num = 1
second_num = 1
while i < (input - 1)
	temp = first_num
	first_num = second_num
	second_num = temp + second_num
	i = i + 1
end
puts "Fibonacci at " + input.to_s + ": " + second_num.to_s


#i = 1, f = 1, s = 1
#i < 3
#i = 2, f = 1, s = 2
#, f = 2, s = 3, i = 3