# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Declare hash
  # Separate items in string
  # Iterate through the array and turn EACH item into a SYMBOL
  # Set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: HASH

def create_list(string)
	grocery_hash = {}
	the_list = string.split
	the_list.each do |item|
		grocery_hash[item] = 1
	end
	print_list(grocery_hash)
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # Add new item and quantity to hash
# output: HASH

def add_item(item,quantity,new_list)
	new_list[item] = quantity
	p new_list
end

# Method to remove an item from the list
# input: Item to remove and quantity
# steps: Delete key and value
# output: Updated hash with removed item / quantity

def remove_item(item,new_list)
	if new_list.has_key?(item) == true
		new_list.delete(item)
	else
		puts "ERROR."
	end

	p new_list
end

# Method to update the quantity of an item
# input: item name and quantity
# steps: 
  #Find key of item
  #Update item value
# output: Hash with updated quantity

def update_quantity(item,quantity,new_list)
	new_list[item] = quantity
	p new_list
end

# Method to print a list and make it look pretty
# input: Grocery Hash
# steps: 
  # Iterate through the hash and print EACH key, value pair in a sentence
# output: Printed grocery list

def print_list(new_list)
	new_list.each do |key,value|
		puts "#{value} #{key}"
	end
end

new_list = create_list("carrots apples cereal pizza")
p add_item("orange",2,new_list)
remove_item("carrots",new_list)
update_quantity("potatoes",100,new_list)
print_list(new_list)









