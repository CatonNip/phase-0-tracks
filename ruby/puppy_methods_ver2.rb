class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  	int.times {puts "Woof!"}
  end	 
end

#Driver Code#
Spot = Puppy.new 
Spot.fetch("ball")
Spot.speak(2)
