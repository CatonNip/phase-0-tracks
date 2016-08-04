# First thing is we need a string to encrypt
# We need some sort of loop to go though each char of the string
# We need to have an empty string to return the new message
# Need a variable to count the index of each element
# Use the next method

def encrypt(message)
	encrypted_message = ""
	index = 0 
	while index < message.length
		encrypted_message = encrypted_message + message[index].next[-1]
		index += 1	
	end
	encrypted_message
end

message = "abcz"
p encrypt(message)