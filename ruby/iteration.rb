########release 0#######
def greeting
	name1 = "Bob"
	name2 = "Joe"
	puts "Hello, how are you doing today?"
	yield(name1, name2)
end
greeting {|name1,name2| puts "Nice seeing you today #{name1} and #{name2}."}

########release 1#######
#declare a new array
new_food = ["pasta","corn","apple","oranges","mangos"]
#use the opbject .each
new_food.each do |food|
	p "#{food} is my fav fooooood! <3"
end
#use object .map
new_food.map do |food|
	food.capitalize!
end
p new_food
#declare a  new Hash
differnt_animals = {fish: "Salmon", cat: "Tiger", dog: "Husky", bird:"Eagle", bug: "Spider"}
#use the .each object on the hash
differnt_animals.each do |type,animals|
	p "I really like #{type}s like the #{animals}."
end
p differnt_animals

####release 2########
#A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
#make an array 
numbers_itteration = [1,2,3,4,5]
music_itteration = {
	rock:"The Rolling Stones",
	country:"Shania Twain",
	kpop:"2ne1",
	jazz:"Etta James"
}

def numbers_less(numbers_itteration)
	numbers_itteration.delete_if {|numbers| numbers <=3}
end

def find_fav_music(music_itteration)
	music_itteration.delete_if {|genre,artist| genre == :kpop}
end
#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).	
def numbers_more(numbers_itteration)
	numbers_itteration.keep_if {|numbers| numbers <=5}
end

def find_music(music_itteration)
	music_itteration.keep_if {|genre,artist| genre == :jazz || artist == "Etta James"}
end
#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

def numbers_even(numbers_itteration)
	numbers_itteration.select {|numbers| numbers.even?}
end

def find_music_type(music_itteration)
	music_itteration.select {|genre,artist| genre == :jazz}
end

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
test_list = [1,2,3,4,5,6,7,8,9,10]

test_hash = {
	horror:"Scream",
	comedy:"The Hangover",
	romance:"The Notebook",
	action: "G.I.Joe"
}

def numbers_condition(test_list)
	test_list.drop_while {|list| list <= 2}
end

def movie_type(test_hash)
	test_hash.drop_while {|type,name| type == :horror}
end

p numbers_less(numbers_itteration)
p find_fav_music(music_itteration)
p numbers_more(numbers_itteration)
p find_music(music_itteration)
p numbers_even(numbers_itteration)
p find_music_type(music_itteration)
p numbers_condition(test_list)
p movie_type(test_hash)




















