var oldArray = argument0;
var newArray = argument1;
var i = 0;

for(i=0; i< array_length_1d(newArray); i++){
	oldArray = addValueToArray(oldArray, newArray[i]);
}
return oldArray;