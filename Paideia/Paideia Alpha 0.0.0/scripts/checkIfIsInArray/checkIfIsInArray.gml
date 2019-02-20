// Rename the arguments for readability
var instanceToCheck = argument0;
var arrayToCheck = argument1;

// Iterator
var i = 0;

for(i = 0; i < array_length_1d(arrayToCheck); i++) {
	if(instanceToCheck == arrayToCheck[i]) {
		return true;
	}
}
return false;