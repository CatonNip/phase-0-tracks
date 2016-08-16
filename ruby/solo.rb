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

class Pokemon 

	def initialize(name)
		puts "Initializing Pokemon class...beep boop beep boop"
		@name = name 
		@type = ["fire","water","grass","ghost","psychic","bug","dragon","ice",
				"fighting","flying","ground","electic","normal","poison","rock"]
		@weakness = ["fire","water","grass","ghost","psychic","bug","dragon","ice",
				"fighting","flying","ground","electic","normal","poison","rock"]
	end

end