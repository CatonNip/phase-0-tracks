class Santa

	def initialize
		puts "initializing Santa instance..."
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

Frank = Santa.new
cookie = "chocolate chip"
Frank.speak
Frank.eat_milk_and_cookies(cookie)
