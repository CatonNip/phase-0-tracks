class Santa

	def initialize(gender,ethnicity)
		puts "initializing Santa instance..."
		@gender = "non-binary"
		@ethnicity = "German"
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
		cookie
	end

end

#UI

# Frank = Santa.new
# cookie = "chocolate chip"
# Frank.speak
# Frank.eat_milk_and_cookies(cookie)
