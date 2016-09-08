class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)
	end

	def speak
		puts "Ho ho ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		@age + 1
		puts "Santa is #{@age} years old! Happy birthday."
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		p @reindeer_ranking
	end

end 

#driver code#
# Carl = Santa.new("santa","santa")
# Carl.speak
# Carl.eat_milk_and_cookies("oatmeal")
# Carl.get_mad_at("Vixen")
# p Carl.gender = "female"

#repetitive# 
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

#re-factor"
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

until santas.length == 10
	santas << Santa.new(example_genders.sample,example_ethnicities.sample)
end
p santas