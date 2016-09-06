#PSUDOCODE#
#INPUT: array, integer
#OUTPUT: index of the integer within the array
#Declare a METHOD search_array that takes an array and integer as PARAMETERS
	#set INDEX as a VARIABLE to 0
	#WHILE the index is less than the LENGTH of an ARRAY
		#IF the array at index equals INT
			#RETURN the index of that int
		#ELSE
			#nil
			#index is updated by ONE
		#end
	#end
#end

#INPUT: integer
#OUTPUT: Fibonacci array
#Declare a METHOD fib that takes an INT as a PARAMETER
	#create fibonacci ARRAY
	#WHILE the length of fibonacci is LESS THAN the INT
		#PUSH the added values of the last two indexes into the fibonacci array
	#end
	#PLACE the new fibonacci array
#end

#Sites used for reference about BUBBLE sort 
#https://www.sitepoint.com/sorting-algorithms-ruby/
#http://stackoverflow.com/questions/23504909/bubble-sorting-logic-in-ruby-method
#https://www.youtube.com/watch?v=x9G7_1RvyB8
#https://www.ruby-forum.com/topic/4402628
#http://stackoverflow.com/questions/11091434/using-the-bubble-sort-method-for-an-array-in-ruby

#INPUT: array
#OUTPUT: sorted version of
#Def a METHOD that sorts and takes a PARAMETER of an array
	#set the LENGTH of the array to a variable 
	#LOOP
		#check to see if item is false
		#check the ARRAY 
			#IF the array is in the position in the list
				#CONDITION is TRUE
				#change swapped to TRUE
			#end
		#end
	#break if not SWAPPED
	#end
	#array
#end



def search_array(array,int)
	index = 0
	while index < array.length
		if array[index] == int
			return index
		else
			nil
			index += 1
		end
	end
end

def fib(int)
	fibonacci = [0,1]
	while fibonacci.length < int
		fibonacci << fibonacci[-2] + fibonacci[-1]
		end
	fibonacci
end

def bubble_sorting(array)
	itterate = array.length
	loop do 
		swapped = false
		(itterate-1).times do |x|
			if array[x] > array[x+1]
				array[x], array[x+1] = array[x+1], array[x]
				swapped = true
			end
		end
		break if not swapped
	end
	array
end

#driver code
#release 0
numbers =[1,2,3,4,5,6,7]
p search_array(numbers,5)
p search_array(numbers,67)
#release 1
p fib(100)[-1]
#release 2
unsorted_numbers = [4,1,2,7,3,6,9,8,0]
p bubble_sorting(unsorted_numbers)