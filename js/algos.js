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

//Release 2//
//Goals//
//Write a FUNCTION that takes an integer for length, and builds and returns an array of strings of the given length.
//The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters.
//Add driver code that does the following 10 times: 
//generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

//Psudocode//
//Declare a FUNCTION that takes an INTERGER as a PARAMETER
	//Declare an empty LIST so that we can PUSH the strings into it
	//Declare a LIST of random words of varying lengths(or find a method that does this)
	//FOR INT create that many number of elements and PUSH to empty List
//print results

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
function findKeyValueMatch(object1,object2,key) {
		if (object1[key] == object2[key]){
			console.log(true)
		} else {
			console.log(false)
		}
}

//Release 2//

//Driver Code//

//Release 0//
// var test1 = ["long phrase","longest phrase","longer phrase"];
// longestElement(test1);

// var test2 = ["WOOOF","MEOW","TWEET TWEET","MOO"];
// longestElement(test2);

// var test3 = ["Popcorn", "Banananananannananana", "Pancake","Oreo"];
// longestElement(test3);

//Release 1//
// var testObject1 = {name: "Steven", age: 54};
// var testObject2 = {name: "Tamir", age: 54};
// findKeyValueMatch(testObject1,testObject2,"age");

// var testObject3 = {name: "Paul", food:"Pizza"};
// var testObject4 = {name: "Paul", age: 54};
// findKeyValueMatch(testObject3,testObject4,"food");

// var testObject5 = {age: 54};
// var testObject6 = {name: "Tamir"};
// findKeyValueMatch(testObject5,testObject6,"name");

//Release 2//

