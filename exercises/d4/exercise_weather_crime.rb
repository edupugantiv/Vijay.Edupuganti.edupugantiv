# From weather API, we get forecast temperature in latitude and longitude
# From crime, we can get the latitude and longitude



# Pull all the latitudes, longitudes from crime data
# We then use that data in weather API to get average temp
# We add average temp to an array
# We sort that array into "buckets" in 10 degree interval, use hashes, increment by 1
# Display output

require "rest-client"
require "json"

response = RestClient.get "https://jgentes-crime-data-v1.p.mashape.com/crime?mashape-key=6Y9ZnIf1UcmshuPKfvDt4Cl3KDTop1zUIl4jsnzIY9X0mBwEBE&startdate=12/06/2014&enddate=6/3/2015&lat=42.32835352081681&long=-83.05783817756172"

parsed_response = JSON.parse(response)
crime_dates = []
i = 0

while i < parsed_response.length
	crime_dates << parsed_response[i]["datetime"]
	i += 1
end

# parsed_response["datetime"].each_with_index do |crime_date|
# 		crime_dates << crime_date
# end
# puts crime_dates.class
months = []
j = 0
	while j < crime_dates.length
		temp = crime_dates[j].split("/")
		months << temp[0]
		j += 1
	end

total_crime = {}
k = 0

while k < months.length
	if total_crime.has_key?(months[k])
		total_crime[months[k]] += 1
	else
		total_crime[months[k]] = 1
	end
	k += 1
end

# puts "#{total_crime.keys}: #{total_crime.values}"

# total_crime.values.map! do |month|
# 	month.to_i
# end

# total_crime.values.sort!

total_crime.each do |key, value|
	puts key + ": " + value.to_s
end


# j = 0
# while j < crime_dates.length
# 	input = crime_dates[j]
# 	t = Time.parse(input)

# end


# puts parsed_response
# crimes = parsed_response["datetime"].to_i



# Start Date is, End date is, Location
# Output, breakdown month