#Pseudcode# 
#Declare a CLASS for our game
	#Set getter method
	#Set setter method
	#Declare an INITIALIZE method to hold ATTRIBUTES 
		#Set an ATTRIBUTE for the word being guessed 
		#Set an ATTRIBUTE to guess count. The amount of guesses depends on the word.
		#Set an ATTRIBUTE to game over as false 
		#Set an ATTRIBUTE to the letters that have been guessed 
	#end

	#Declare a Method for amount of guesses given
		#IF the LENGTH of the word if EQUAL to the LENGTH of the letters that have been guessed 
			#THEN the game is over
		#end
	#end

	#Declare a METHOD to check if letters inputed are included and takes the letter as a parameter
		#IF letters are included in the letters that have been guessed
			#PUSH that letter into ARRAY
			#and update GUESS COUNTER
		#end
	#end

	#declare a method for if the game is over
		#IF the guesses counter is full or the player got the word
			#is over is true
		#end
	#end
#end

class Game

end