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

#Driver Code#
Spot = Puppy.new 
Spot.fetch("ball")
Spot.speak(2)
Spot.roll_over
Spot.dog_years(4)
Spot.play_dead