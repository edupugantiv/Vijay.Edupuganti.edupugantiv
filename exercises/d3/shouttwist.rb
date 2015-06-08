def twist(phrase)
	puts phrase.split("").shuffle.join
end

# twist("HI THERE I AM STILL HUNGRY")

def invert(hash_set)
	revised_hash = {}
	i = 0
	while i < hash_set.length
		revised_hash[hash_set.values[i]] = hash_set.keys[i]
		i = i + 1
	end
	revised_hash
end

names = Hash.new
names[1] = "Jane"
names[2] = "Thomas"

puts invert(names)