# Must change to map

result = ["Google", "Bing", "Ask Jeeves"].map do |e|
  if e == "Google"
    e = "OK"
  elsif e == "Bing"
    e = "Bad!"
  else
    e = "What is that?"
  end
end

puts result.to_s