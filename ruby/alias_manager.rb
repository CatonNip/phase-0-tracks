####Pseudocode####
#INPUT:User Name Info
#OUTPUT: Agent's name reversed
#Declare a METHOD that gathers that agents real name
	#Prompt USER for the FIRST name
		#STORE the INPUT into a variable 
			#IF that variable is 'quit'
				#ABORT the program 
			#End
	#Prompt USER for Last name
		#STORE the INPUT in a variable 
			#IF the variable is 'quit'
				#ABORT the program
			#end
	#Set agent's reversed name as a variable
#end

#INPUT:letter
#OUTPUT: shifted letters
#Declare a METHOD that takes the name_string as a PARAMETER 
	#set a STRING of vowels to a VRAIABLE 
	#set a STRING of consonants to a VARIABLE 
	#IF the string of VOWELS INCLUDES in the PARAMETER
		#parameter are shifted by ONE
	#ELSE IF CONSONANTS INCLUDES in the PARAMETER
		#shift the constants by ONE
	#ELSE
		#just put the name_string
	#end
#end


#INPUT:agent_real_name and vowels_consonatns methods
#OUTPUT: fake_name
#Declare a METHOD that creates the agent's alias
	#set the agent_real_name SPLITED to a VARIABLE
	#Write a BLOCK that for each LETTER in the fake_name array 
		#update fake_name to EQUAL the vowels_consonants
	#end
	#Join the fake_name back together
#end
#######

def agent_real_name
	puts "Hello there Agent. Please enter your first name or type 'quit' to end the program."
		firstname = gets.chomp.downcase
			if firstname == 'quit'
				abort
			end
	puts "Now enter your last name or type 'quit' to end the program.."
		lastname = gets.chomp.downcase
			if lastname == 'quit'
				abort
			end
	reversed_name = lastname + " " + firstname
end

def vowels_consonants(name_string)
	vowels = "aeioua"
	consonants = "bcdfghjklmnpqrstvwxyzb"
	if vowels.include?(name_string)
		vowels[vowels.index(name_string) + 1]
	elsif consonants.include?(name_string)
 		consonants[consonants.index(name_string) + 1]
	else
		name_string
	end
end

def agents_alias
	fake_name = agent_real_name.split('')
	fake_name.length.times do |letter|
		fake_name[letter] = vowels_consonants(fake_name[letter])
	end
	fake_name.join('')
end


name = ""
until name == 'quit'
	p agents_alias.capitalize
end