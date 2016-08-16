class Santa
	attr_reader :reindeer_ranking, :ethnicity
	attr_accessor :gender, :age
	
	def initialize(gender,ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
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
		puts "Santa you're #{age} years old now!"
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		p @reindeer_ranking
	end
end

santas = []
example_genders = ["non-binary","agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

until santas.length == 100
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
p santas

