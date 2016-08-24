// Declare two separate lists. One for color and one for names.
// Set variable to a list of colors
var horseColors = ["Radiant Orchid", "Titanium White", "Cerulean", "Alizarin Crimson"];
// Set variable to a list of names
var horseNames = ["War Admiral", "American Pharoah","Sir Barton", "Gallant Fox"];
// Add code to add new colors and names to the horse_names and horse_colors list
horseColors.push("Yellow Ochre");
horseNames.push("Bob Ross");

// Create a key value data structure that will assign horseNames as the key and horseColors as the value.
// Both lists should be the same length 
// Since this code should work for any number of list items we should find a way to go through each item in the list.
// Declare an empty OBJECT
// FOR LOOP and take the LENGHTH of list horseColors
	// Declare incrementors
	// Use BRACKET NOTATION to set the values of horseNames to be the KEY and index of horseColors to be the object VALUE.
var horses = {};
for (var i = 0; i < horseNames.length; i++){
	horses[horseNames[i]] = horseColors[i]
}

// Driver Code //
// To print lists
console.log(horseColors)
console.log(horseNames)
console.log(horses)

// Release 2 Constructor Functions //
// Pseudocode //
//GOALS//
// Write a constructor FUNCTION for cars
// Give a few different properties of various DATA TYPES
// Look for PROPERTIES that all cars have in common 
// Include at least one FUNCTION
// CALL function to create multiple cars 
// Builder Code //
// Declare a FUNCTION that takes PROPORTIES as PARAMETERS
	// Use "this" keyword to create PROPERTIES for cars
	// Use "this" keyword to create a FUNCTION
	// Print an ending INITIALIZATION statement 
//end



