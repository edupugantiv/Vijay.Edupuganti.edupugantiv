
# Hero attributes
# name_hero = "Monkpuff"
# health_hero = 100
# power_hero = 50
# items_hero = ["sword", "lasers", "groupies"]
# exp_hero = 0

hero = {
	name: "Monkpuff",
	health: 100,
	power: 50,
	items: ["sword", "lasers", "groupies"],
	exp: 0
}

# Monster attributes
# name_monster = "Dapthyrltrix III"
# health_monster = 99
# power_monster = 49
# type_monster = "Dragon"

monster = [
	{
		name: "Dapthyrltrix III",
		health: 99,
		power: 49,
		type: "Dragon"
		},
	{
		name: "Squigs",
		health: 99,
		power: 49,
		type: "Goblin"
},
	{
		name: "Squidward",
		health: 99,
		power: 49,
		type: "Dragon"
	},
]

def attack(attacker, defendant)
	defendant[:health] -= attacker[:power]
	unless attacker[:exp].nil?
		attacker[:exp] += 1
	end
end

puts "before: "
puts monster[0][:health]
puts hero[:exp]
attack(hero, monster[0])
puts "after: "
puts monster[0][:health]
puts hero[:exp]


