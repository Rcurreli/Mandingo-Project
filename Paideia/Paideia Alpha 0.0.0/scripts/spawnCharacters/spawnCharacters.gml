// Rename arguments for readability
var charactersToSpawn = argument0;
var xLower = argument1;
var yLower = argument2;
var xUpper = argument3;
var yUpper = argument4;

// Iterator
var i = 0;

// Used for the return
var charactersSpawned = [];

for(i = 0; i < array_length_1d(charactersToSpawn); i++) {
	charactersSpawned[i] = spawnOneCharacter(charactersToSpawn[i],
		((xLower * (array_length_1d(charactersToSpawn) - i)) + (xUpper * i))
			/ array_length_1d(charactersToSpawn),
		((yLower * (array_length_1d(charactersToSpawn) - i)) + (yUpper * i))
			/ array_length_1d(charactersToSpawn)
	);
}

return charactersSpawned;