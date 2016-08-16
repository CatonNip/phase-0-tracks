class Santa
	def initialize(gender,ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
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

	def celebrate_brithday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		p @reindeer_ranking
	end
	#getter methods
	def age
		@age +=
		puts "Santa you're #{age} years old now!"
	end

	def ethnicity
		@ethnicity
	end
	#setter method
	def gender=(new_gender)
		@gender = new_gender
	end
end

santas = []
example_genders = ["non-binary","agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

until santas.length == 3
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
p santas



# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

Frank = Santa.new("non-binary","French")
cookie = "chocolate chip"
Frank.speak
Frank.eat_milk_and_cookies(cookie)
Frank.get_mad_at("Dasher")
Frank.celebrate_brithday
