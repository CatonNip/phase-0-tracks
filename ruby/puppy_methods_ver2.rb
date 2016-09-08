class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

#Driver Code#
Spot = Puppy.new 
Spot.fetch("ball")