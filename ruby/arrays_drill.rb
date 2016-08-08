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