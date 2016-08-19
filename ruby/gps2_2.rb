# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Declare hash
  # Separate items in string
  # Iterate through the array and turn EACH item into a SYMBOL
  # Set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: HASH

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # Add new item and quantity to hash
# output: HASH

# Method to remove an item from the list
# input: Item to remove and quantity
# steps: Delete key and value
# output: Updated hash with removed item / quantity

# Method to update the quantity of an item
# input: item name and quantity
# steps: 
  #Find key of item
  #Update item value
# output: Hash with updated quantity

# Method to print a list and make it look pretty
# input: Grocery Hash
# steps: 
  # Iterate through the hash and print EACH key, value pair in a sentence
# output: Printed grocery list

def create_list(string)
	grocery_hash = {}
	the_list = string.split
	the_list.each do |item|
		grocery_hash[item] = 1
	end
	print_list(grocery_hash)
end

def add_item(item,quantity,new_list)
	new_list[item] = quantity
	p new_list
end

def remove_item(item,new_list)
	if new_list.has_key?(item) == true
		new_list.delete(item)
	else
		puts "ERROR."
	end
	p new_list
end

# we can delete this method
# def update_quantity(item,quantity,new_list)
# 	new_list[item] = quantity
# 	p new_list
# end

def print_list(new_list)
	new_list.each do |key,value|
		puts "#{value} #{key}"
	end
end


##Driver Code##
new_list = create_list("")
add_item("Lemonade",2,new_list)
add_item("Tomatoes",3,new_list)
add_item("Onions",1,new_list)
add_item("Ice Cream",2,new_list)
remove_item("Lemonade",new_list)
update_quantity("Ice Cream",4,new_list)

print_list(new_list)

# p add_item("orange",2,new_list)
# remove_item("carrots",new_list)
# update_quantity("potatoes",100,new_list)
# print_list(new_list)


# What did you learn about pseudocode from working on this challenge?
# => I learned that when I pseudocode I tend to really over think. 
# => I've had a horrible habbit of just rushing into things and not taking the
# => time to psudocode propperly. Taking just a little bit of time to wite your
# => code in plain english makes it so much easier to understand and write the initial 
# => solution.

# What are the tradeoffs of using arrays and hashes for this challenge?
# => When picking what data structure you use it's important to look at the code 
# => you're writing for. The reason why my partner and I choose a hash was so we can 
# => assign a quanity value for an item. If the progam wanted us to find an item in
# => a grocery list and array would have been more useful and a hash.

# What does a method return?
# => A method returns the output. This output can be used as an argument for other
#methods in your program or printed.

# What kind of things can you pass into methods as arguments?
# => You can pass other methods, data stuctures, variables, user input, ect.

# How can you pass information between methods?
# => To pass information between methods you need to set a variable to be an output of
# => a method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# => There where so many concepts that where cleaned up thanks to my amazing guide! Thanks
# => Davina you're amazing! Psudocode-ing was one of the big ones. There are so many built
# => in ruby methods and I'm still trying to remember them. I can't be scared to look things up.
