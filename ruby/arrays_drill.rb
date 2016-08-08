def build_array(input_1,input_2,input_3)
	new_array = []
	new_array << input_1 << input_2 << input_3
end

def add_to_array(array,input)
	array << input
end

food = []
p food 

food << "steak" << "poatoes" << "grapes" <<"popcorn" << "apples"
p food

food.delete("grapes")
p food

food.insert(2,"mangos")
p food

food.shift
p food

p "Does the list include mangos?"
p food.include?("mangos")

drinks = ["oj","beer","tea"]
menu = food + drinks
p menu

p build_array(1,2,3)
p build_array(nil,true,"cats")
p add_to_array(menu,"coffee")
p add_to_array(menu,"ice cream")
