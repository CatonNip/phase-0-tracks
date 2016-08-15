####Pseudocode####
#prompt the agent to input their name
#save that name into a data stucture 
#create small methods so you can link them together
#translate if a letter within the data structure is a vowel or consonant
#look up modual to transfer charaters and/or indexes of a data structure
#make all of the inputs .downcase or .upcase to filter though inputs that might have both

#I need to def methods that:
	#gathers the user's name and convert it to a data structure
	#tell me if an item on a data structure is a vowel
	#tell me if an item on a data stucture is a consonant
	#convert the user's original name into an alias 
#######

def agent_real_name
	puts "Hello there Agent. Please enter your first name. If you daaare!!!"
		firstname = gets.chomp.downcase
# => here is where my code kept breaking until I compined the stings into a variable
	puts "Now enter your last name."
		lastname = gets.chomp.downcase
	name = lastname + " " + firstname
end

def agents_alias(agent_real_name)
	fake_name = agent_real_name.split('')
	fake_name.length.times do |edit|
		fake_name[edit] = vowels_consonants(fake_name[edit])
	end
	fake_name.join('')
end

def vowels_consonants(letter)
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	if vowels.include?(letter)
		vowels[vowels.index(letter) + 1]
	elsif consonants.include?(letter)
 		consonants[consonants.index(letter) + 1]
	else
		letter
	end
end

puts agents_alias(agent_real_name).capitalize	