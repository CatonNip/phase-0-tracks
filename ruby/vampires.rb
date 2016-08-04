vampire = "sunshine"
input = ""

p "How many employees need to be processed?"
	employees = gets.to_i
until employees == 0
	p "What is your name? *looks at you suspiciously* ( ͡ಠ ʖ̯ ͡ಠ)"
		name = gets.chomp 
	p "☜(`o´) How old are you?!"
		age = gets.to_i
	p "What year were you born?"
		birthday_year = gets.to_i
		if 2016 - birthday_year == age
			p "Your age checks out"
			age = true
		elsif 2016 - birthday_year >= age
			p "Hmmm...seems fishy."
			age = false
		else 
			p "You didn't put anything down...are you shy?"
			age != true
		end
	p "(ಠ ∩ಠ)Our company cafeteria serves garlic bread."
	p "Should we order some for you?(yes/no)"
		garlic_bread = gets.chomp
		case garlic_bread
			when 'y','Y','yes','YES','Yes'
		    garlic_bread = true
			when 'n', 'N','no','NO','No'
		    garlic_bread != true
		end
	p "Would you like to enroll in the company’s health insurance? HUH?! Do ya punk?! ೕ(Ò⺫ Ó )೨(yes/no)"
	insurance = gets.chomp
		case insurance
	  		when 'y','Y','yes'
	    	insurance = true
	 		when 'n', 'N','no' 
	   		insurance != true
		end
	
	if name == "Drake Cula" 
		p "Definitely a vampire."
	elsif age && garlic_bread && insurance
		p "HmmmMmMMM...I guess you probably aren't a vampire #{name}."
	elsif age || (garlic_bread && insurance)
		p "You seem kind of vampire-ish to me #{name}."
	elsif age||garlic_bread||insurance
		p "You're a vampire aren't you? Get out #{name}! >:("
	else
		p "Results inconclusive."	
	end

	while input != vampire
		p "What allerigies do you have? Please type 'done' to end the servey."
		input = gets.chomp
	end

	puts "probably a vampire"
	employees = employees - 1
	p "#{employees} more employees to servey"
end
p  "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

		
		