// Rename arguments for readability
var charactersToSpawn = argument0;
var xBase = argument1;
var yBase = argument2;
var xOffset = argument3;
var yOffset = argument4;
var layerWhereToSpawn = argument5;

// Iterator
var i = 0;

// Used for the return
var charactersSpawned = [];

for(i = 0; i < array_length_1d(charactersToSpawn); i++) {
	charactersSpawned[i] = spawnOneCharacter(
		charactersToSpawn[i],
		xBase + xOffset * ((array_length_1d(charactersToSpawn) / 2) - i - 1),
		yBase - yOffset * ((array_length_1d(charactersToSpawn) / 2) - i - 1),
		layerWhereToSpawn
	);
}

return charactersSpawned;