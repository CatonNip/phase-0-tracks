//Release 0//
//Goals//
//Write a FUNCTION that takes a LIST of words or phrases and OUTPUTS the longest word or phrase.
//Add driver code to TEST the written function on a few ARRAYS.

//Psudocode//
//Create a LIST of words or phrases.
//Declare a FUNCTION that takes a LIST as a parameter.
	//Set a VARIABLE to an empty string so we can PUSH the data of the longest string into it.
	//FOR each element in the LIST LOOP through them looking for the longest string LENGTH
		// CONCENTRATE each STRING into the set VARIABLE
	//Print the variable that should contain the longest element in the list

//Release 1//
//Goals//
//Write a FUNCTION that takes two OBJECTS and checks to see if the objects share at least one key-value pair.
//Try to reason through the problem using the basics you've already learned.
//Add some driver code that tests both outcomes of your function.

//Psudocode//
//Declare a FUNCTION that takes two OBJECTS as parameters
	//LOOP though each item in an object
		//compare two objects to see if any of their key-value pairs match up
		//IF any of the key-value pairs match up then the match is TRUE
		//ELSE the match is false
	// Print results

//Release 0//
function longestElement(array) {
	var longest = 0;
	var longestPhrase = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longest) {
			longest = array[i].length;
			longestPhrase = array[i]
		}
	}
	console.log(longestPhrase);
}

//Release 1//




//Driver Code//

//Release 0//
// var test1 = ["long phrase","longest phrase","longer phrase"];
// longestElement(test1);

// var test2 = ["WOOOF","MEOW","TWEET TWEET","MOO"];
// longestElement(test2);

// var test3 = ["Popcorn", "Banananananannananana", "Pancake","Oreo"];
// longestElement(test3);