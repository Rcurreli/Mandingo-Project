// Rename arguments for readability
var charactersToSpawn = argument0;

// Iterator
var i = 0;

// Used for the return
var charactersSpawned = [];

for(i = 0; i < array_length_1d(charactersToSpawn); i++) {
	charactersSpawned[i] = spawnOneCharacter(charactersToSpawn[i]);
}

return charactersSpawned;