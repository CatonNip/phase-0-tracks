###OLD SHOUT CODE###
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#   	words + "<3" + " ;D"
#   end
# end

# #DRIVER CODE
# p Shout.yell_angrily("DARN!")
# p Shout.yelling_happily("YAY!")
#################

#NEW SHOUT CODE

module Shout
	def shouting(words)
		words + "!!!!!!!!! (ꐦ ಠ皿ಠ )"
	end
end

class Donald_Trump_Supporters
	include Shout
end

class Angry_Gamers
	include Shout
end
#driver code
donald = Donald_Trump_Supporters.new 
p donald.shouting("Make AMERRRICA GREAT AGAIN")

toxic = Angry_Gamers.new
p toxic.shouting("UGH THIS TEAM SUCKS")












