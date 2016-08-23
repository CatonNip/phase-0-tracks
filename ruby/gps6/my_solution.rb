# Virus Predictor

# I worked on this challenge [with: Kelvin Lightner].
# We spent [1.5] hours on this challenge.

# Explanation of Require Relative
# Require Relative links this ruby file to a near relative file
# Require goes to the core built in profile

# Release 3
# This is a nested data structure that shows a hash within a hash. 
# The variable STATE_DATA is a ruby constant. Its scope is global. 

require_relative 'state_data'

class VirusPredictor
  # Initializes every time there is a new instance 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    puts "This State is Initialized..."
  end

  # Calls methods: predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths(@population_density, @population)
    speed_of_spread(@population_density)
    # Deleted out @state because it isn't being used in either method
  end

  private
  # Calculates number of predicted deaths according to state data
  def predicted_deaths(population_density, population)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates the speed of virus spreading through given population
  def speed_of_spread(population_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# Release 5: Implement a new feature
states = {}

STATE_DATA.each do |key, value|
  states[key] = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
end

p states["Washington"].virus_effects

# # Original Driver Code Testing
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => There are two differnt hash syntaxes in used here. When assigning a string as a key you have to use this "=>" syntax. 
# => When assining  a symbol as a key you use ":" this syntax.

# What does require_relative do? How is it different from require?
# => Require Relative links this ruby file to a near relative file.
# => Require goes to the core built in profile.

# What are some ways to iterate through a hash?
# => You can used to built in method .each, .each_value, .each_pair.
# => You can also use keys in a foreach loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => Something that really stood out to me was that the state parameter that was in speed_of_spread wasn't even being used.

# What concept did you most solidify in this challenge?
# => Something that I really solidified durring this challenge was intterating though a hash.
