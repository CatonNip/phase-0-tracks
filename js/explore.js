// Pseudo code //
// Input: STRING
// Declare a FUNCTION(method) that takes a STRING as a parameter.
	// Have a VARIABLE save data of the STRING but start as an empty string
	// FOR each CHARACTER in the VARIABLE LOOP through them
		// CONCATENATE each CHARACTER on the VARIABLE
	// RETURN the changed VARIABLE
// Output: STRING with characters reversed 

function reverse(string) {
	var reversed_string = '';
	for (var i = string.length - 1; i >= 0; i--) {
		reversed_string += string[i];
	}
	return reversed_string;
}

// Driver Code //
console.log(reverse("MEOW"));

// Add driver code that prints the variable if some condition is true
var reverse_dog = reverse("WOOF");
if (6 <= 99) {
	console.log(reverse_dog)
}

// Test Code //
// var code = "String!"
// console.log(code)
