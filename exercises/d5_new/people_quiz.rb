
# 1. Line 3 is needed because the constructor (the method named initialize) takes in
# one argument ("name"), which means that any instantiations of the class
# Person must include "name". By setting @name = name, this ensures that
# name will be able to be referenced by the entire class. Without it, 
# no instances of Person could be created

# 2. Subclass

#3. It will not work, you need to have two arguments to specify what
# the name and field is of the engineer

#4. elon_musk is an instance and an object (technically a variable)

def index_of(string, letter)
	count = 0
	string.split("").each do |i|
  		if (i == letter)
  			return count
  			break
		end
		count += 1
	end
	if count == string.length
		return -1
	end
end

def find_by_name(hashes, string)
	count = 0
	while count < hashes.length
		if hashes[count][:name] == string
			puts hashes[count]
			break
		end
		count += 1
	end
	if count == hashes.length
		puts nil
	end
end

def filter_by_name(hashes, string)
	count = 0
	return_array = []
	while count < hashes.length
		if hashes[count][:name] == string
			return_array << hashes[count]
		end
		count += 1
	end
	puts return_array
end

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]

filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
filter_by_name(people, "puppy!!!")

# Thing to find = item in array

# Write a method find_by_name, which takes an array of hashes, 
# each of which has the property :name, and a string and finds 
# the first one that has that name.

# Thing to find = items in array

# Write a second, very similar method filter_by_name, 
# which returns and array with all the items with the given name. 
# Note that that method should always return an array, even if only 
# one item is found.
