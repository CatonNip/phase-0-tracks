#Pair with Jesscodes#
class Puppy

	def initialize
		puts "Initializing puppy instance...BEEP BEEP BOOP BOPP"
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times {puts "Woof!"}
  end	 

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	puts human_years * 7
  end

  def play_dead
  	puts "*play dead*"
  end

end

class Kangaroo

	def initialize
		puts "Initializing Kangaroo instance!"
	end 

	def hops
		puts "*hops*"
	end

	def kick(ammount_of_kicks)
		ammount_of_kicks.times {puts "*kicks you*"}
	end

end

#Driver Code#
# Spot = Puppy.new 
# Spot.fetch("ball")
# Spot.speak(2)
# Spot.roll_over
# Spot.dog_years(4)
# Spot.play_dead

# Joey = Kangaroo.new
# Joey.kick(5)

kangaroo_array = []
# #option 1
# # number_of_kangaroos = 0
# # until number_of_kangaroos == 50
# # 	kangaroo_array << Kangaroo.new
# # 	number_of_kangaroos += 1
# # end 

# #option 2
50.times {kangaroo_array << Kangaroo.new}
p kangaroo_array

kangaroo_array.each do |kangaroo|
	kangaroo.hops 
	kangaroo.kick(1)
end