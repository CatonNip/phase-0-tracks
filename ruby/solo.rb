# Pokemon ------------------------
#first gen 
# CHARACTERISTICS ----------------
# Type: varies (fire,water,grass,ghost,psychic,bug,dragon,ice,
# fighting,flying,ground,electic,normal,poison,rock)
# => pokemon type source (http://pokemon.wikia.com/wiki/Pok%C3%A9mon_types)
# weakness: varies
# Name: varies

# BEHAVIOR -----------------------
# attack
# being adorable 

#declare a pokemon class
class Pokemon
	#attr_reader acts as a getter method
	attr_reader :weakness
	#attr_accessor acts as a setter method
	attr_accessor :name,:type,:attack
	#declar initialize method and call attributes you need
	def initialize(name)
		#put a print statement so you know the method is working
		puts "Who's...that...POKEMON?!"
		#assign attributes
		@name = name 

		@type = ["fire","water","grass","ghost","psychic","bug","dragon","ice","fighting",
				"flying","ground","electic","normal","poison","rock"]

		@weakness = ["fire","water","grass","ghost","psychic","bug","dragon","ice","fighting",
					"flying","ground","electic","normal","poison","rock"]

		@attack =	["FLAMETHROWER and lights a house on fire.","SURF and surfs away.",
					"RAZOR LEAF and cuts itself.","LICK and creeps out their opponent.",
					"HYPNOSIS and tricks you into buying them a diet coke.",
					"STRING SHOT and feels really insecure with themselves.",
					"DRAGON RAGE and leaves a mean comment on your youtube channel.",
					"BLIZZARD and creates a new expansion pack for World of Warcraft.",
					"SEISMIC TOSS but isn't able to lift their opponent off the ground.",
					"GUST and gets sand in their eye. OUCH!", 
					"DIG and buries their head in the ground.",
					"THUNDERBOLT and that is how mankind discovered electricity.",
					"SELF DESTRUCT and forgets to save and commit their work to github.",
					"TOXIC and plays League of Legends.",
					"ROCK THROW and throws a pebble at their opponent."
				]
	end

	def pokemon_type
		#type.sample returns a random element within a list.
		puts "#{name}'s type is " + type.sample + "."
	end

	def pokemon_weakness
		puts "#{name}'s weakness is " + weakness.sample + "."
	end

	def pokemon_attack
		puts "#{name} uses " + attack.sample + "."
	end

end

#UI
# pokemon_array =

# puts "Welcome to the pokemon generator 2000!"




Haunter = Pokemon.new("Patrick")
Haunter.pokemon_type
Haunter.pokemon_attack
Haunter.pokemon_weakness
