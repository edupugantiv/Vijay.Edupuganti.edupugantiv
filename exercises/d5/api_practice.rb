require "rest-client"
require "json"

puts "Hello! Welcome to Reddit friend!"

puts "Loading stories ..."

puts "What stories would you like to see ('too, 'hot')?"

feed = gets.strip

response = RestClient.get "http://www.reddit.com/r/funny.json?limit=10"
parsed_response = JSON.parse(response)
children = parsed_response["data"]["children"]

children.each_with_index do |child, index|
	# puts "#{{index + 1}. #{story["data"]["title"]}"
end

i = 0
total = 0
while (i < children.length)
	total+= children[i]["data"]["score"]
	i += 1
end

# children.each do |child|
# 	total+= children[i]["data"]["score"]
# 	i += 1
# end

average = total/i
puts "Average score: " + average.to_s