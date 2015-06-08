cookbook = {
	"crepes" => {
		:description => "description", 
		:ingredients => ["ingred_one", "ingred_two"],
		:steps => ["step_one", "step_two"]
		}, 
	"lasagna" => {
		:description => "description", 
		:ingredients => ["ingred_one", "ingred_two"],
		:steps => ["step_one", "step_two"]
		}, 
	"chicken parm" => {
		:description => "description", 
		:ingredients => ["ingred_one", "ingred_two"],
		:steps => ["step_one", "step_two"]
		}
	}

#1. Hash in ingredients.rb: Hash<String, Array<String>>
#2. Hash<Hash, Array<Integer>>
#3. Array<Hash<Array<String>, Symbol>>
#4. Hash<<Symbol, Hash<Symbol, Array<String>>>, Hash<Symbol, String>>