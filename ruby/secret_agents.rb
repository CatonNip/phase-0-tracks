# First thing is we need a string to encrypt
# We need some sort of loop to go though each char of the string
# We need to have an empty string to return the new message
# Need a variable to count the index of each element
# Use the next method

def encrypt(message)
	encrypted_message = ""
	char_index = 0 
	while char_index < message.length
		if message[char_index] != " "
			encrypted_message = encrypted_message + message[char_index].next[-1]
		else
			encrypted_message = encrypted_message + message[char_index]
		end
		char_index += 1	
	end
	encrypted_message
end


def decrypt(message)
	decrypted_message = "" 
	char_index = 0
	alpha = "abcdefghijklmnopqrstuvwxyz" 
	while char_index < message.length
		if 	message[char_index] != " "
			position = alpha.index(message[char_index])
			decrypted_message = decrypted_message + alpha[position - 1]
		else
			decrypted_message = decrypted_message + message[char_index]
		end
		char_index += 1	
	end
	decrypted_message
end
