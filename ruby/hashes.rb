#pseudocode
#Create hash 
#As the user to input clients' data 
#Store imputed data as a variable 
#Convert input data into the appropriate data type (ints, boolean, and str)
#Print out the hash when the user finishes questions
#Ask user if any changes need to be made
#Let the user change any input needed 

#ask user for client info though a method just to make things a little easier
def get_client_info_str(question)
	puts question
	gets.chomp
end
#make a method to get and convert the info into an int
def get_client_info_int(question)
	puts question
	gets.to_i
end
#Tell the user a greeting. This isn't needed but I like have fun with my code. Haha.
puts "Welcome to the client intake sheet 9000."

name = get_client_info_str("What's the client's name?")
age = get_client_info_int("How old is the client?")
email = get_client_info_str("Please enter the client's email address.")
address = get_client_info_str("What is your client's residential address?")
phone = get_client_info_int("What is your client's phone number?")
theme = get_client_info_str("What theme does the client want for their design?")
pet = get_client_info_str("Does their household have any pets? Please type yes or no.")
#for my booleans I use a control flow
	if pet.downcase == "no" 
		pet = false
	else pet = true
	end
wallpaper = get_client_info_str("Does the client like wallpaper? Please type yes or no.")
	if wallpaper.downcase == "no"
		wallpaper = false
	else wallpaper = true
	end
		
#Create hash
client_input_sheet = {
	name: name,
	age: age,
	email: email,
	address: address,
	phone: phone,
	theme: theme,
	pet: pet,
	wallpaper: wallpaper
}
#prints the client_input_sheet for the client to review 
puts client_input_sheet
#ask the user if they want to make any changes 
modified_hash = get_client_info_str("If you want to change your date please enter the appropriate key: name,age,email,address,phone,theme,pet,or wallpaper. If no chages need to be made please type: none.")
	if modified_hash != "none"
		change = get_client_info_str("What is the new value?")
		if modified_hash == "age" || "phone"
			client_input_sheet[modified_hash.to_sym] = change.to_i
		elsif modified_hash == "pet" || "wallpaper"
			if change == "no"
				client_input_sheet[modified_hash.to_sym] = false
			else
				client_input_sheet[modified_hash.to_sym] = true
			end
		else 
			client_input_sheet[modified_hash.to_sym] = change
		end
	end


puts client_input_sheet
		
		
