// Rename arguments for readability
var instanceToDelete = argument0;
var arrayToCheck = argument1;

// Used for the return
var arrayWithoutTheInstance = [];

// Iterators
var i = 0;
var j = 0;

for(i = 0; i < array_length_1d(arrayToCheck); i++) {
	if(arrayToCheck[i] != instanceToDelete) {
		arrayWithoutTheInstance[j] = arrayToCheck[i];
		j++;
	}
}

return arrayWithoutTheInstance;