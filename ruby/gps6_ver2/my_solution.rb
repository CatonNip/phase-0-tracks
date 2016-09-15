# Virus Predictor

# I worked on this challenge [by myself, with: Tony Nguyen ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Loads a file that can be used relative to our current file.
# "Require" requires the full path name. 

# Constant:
# Acts like a global variable. All elements of the program has access to the constant.
require_relative 'state_data'

class VirusPredictor

#Takes three attributes and creates an instance defined with state of origin, the state's population
#and its population density

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density

  end

#calls the two methods below it (predicted_deaths && speed_of_spread)

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#takes population_density, population, and state as parameters
#calculates estimated number_of_deaths based of population density
#returns a print statement (read below)

  def predicted_deaths
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

#takes population_density and state as parameters
#estimates the speed of influenza spread based on population density (in months)
#returns a print statement at the end

  def speed_of_spread #in months
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
 #any method below the Private method is private (e.g. if you want to hide the formulas of speed_of_spread and predicted_deaths)
 #any method above the Private method is public


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population_hash|
  new_state_instance = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_state_instance.virus_effects
end

#declare new variable name for each state
#write block that iterates through key and value and then as


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# => There are two different hash syntaxes in used here. When assigning a string as a key you have to use this "=>" syntax. 
# => When assigning  a symbol as a key you use ":" this syntax.

# What does require_relative do? How is it different from require?
# => Require Relative links this ruby file to a near relative file.
# => Require goes to the core built in profile.

# What are some ways to iterate through a hash?
# => You can used to built in method .each, .each_value, .each_pair.
# => You can also use keys in a for each loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# => Something that really stood out to me was that the state parameter that was in speed_of_spread wasn't even being used.

# What concept did you most solidify in this challenge?
# => Something that I really solidified during this challenge was integrating though a hash.