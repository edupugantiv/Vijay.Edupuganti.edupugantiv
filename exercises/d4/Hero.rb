class LivingThing
	def initialize (name,health,power)
		@name = name
		@health = health
		@power = power
	end

	def dead?
		if @health <= 0
			puts "I'm dead"
			@health <= 0
		end

	end
end

class Hero < LivingThing
	def initialize(name, health, power, items)
		@name = name
		@health = health
		@power = power
		@items = items
		@exp = 0

	end

	def attack(defendant, power)
		defendant[:health] -= @power
		@exp += 1
	end

	
end

class Monster < LivingThing
	def initialize(name, health, power, type)
		@name = name
		@health = health
		@power = power
		@type = type
	end

	def attack(defendant, power)
		defendant[:health] -= @power
	end
	
end

# Hero.new("Aaron", 10, 2000, ["scruff", "squash racquet"])
# Monster.new("Britt", 5, 4000, "Tiger")

aaron = Hero.new("Aaron", 10, 2000, ["scruff", "squash racquet"])
britt = Monster.new("Britt", 5, 4000, "Tiger")

puts britt.attack(aaron,4000)

puts aaron.check_if_dead
