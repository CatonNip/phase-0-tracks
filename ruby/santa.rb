class Santa
	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho ho ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
end 

#driver code#
Carl = Santa.new
Carl.speak
Carl.eat_milk_and_cookies("oatmeal")