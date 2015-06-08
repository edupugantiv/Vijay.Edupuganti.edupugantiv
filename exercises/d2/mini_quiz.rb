puts "Welcome to Vijay's mini quiz."

puts "How many letters is my last name?"

answer_question1 = gets.strip.to_i

point_total = 0

if (answer_question1 < 13)
	puts "Too small! It's 13. You have #{point_total} points."
elsif (answer_question1 > 13)
	puts "Too big! It's 13. You have #{point_total} points."
else
	point_total = point_total + 1
	puts "Yes! You are correct. You have #{point_total} point."
end

puts "What city am I from?"

answer_question2 = gets.strip

city = "Portland"

if (answer_question2 == city)
	point_total = point_total + 1
	if point_total != 1
		puts "Yes! You have #{point_total} points."
	else
		puts "Yes! You have #{point_total} point."
	end
else
	if point_total == 1
		puts "Incorrect. I am from Portland. You have #{point_total} point."
	else
		puts "Incorrect. I am from Portland. You have #{point_total} points."
	end
end

puts "What is my major at UVA?"

answer_question3 = gets.strip

if (answer_question3 == "Computer Science")
	point_total = point_total + 1
	if point_total == 1
		puts "Yes! You have #{point_total} point."
	else
		puts "Yes! You have #{point_total} points."
	end
else
	if point_total == 1
		puts "Hell no! I am studying Computer Science! You have #{point_total} point."
	else
		puts "Hell no! I am studying Computer Science! You have #{point_total} points."
	end
end

puts "Thanks for playing!"

	