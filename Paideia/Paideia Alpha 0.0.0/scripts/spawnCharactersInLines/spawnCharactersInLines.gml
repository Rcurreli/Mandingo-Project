// Rename arguments for readability
var charactersToSpawn = argument0;
var xFirst = argument1;
var yFirst = argument2;
var xSecond = argument3;
var ySecond = argument4;
var xThird = argument5;
var yThird = argument6;
var xOffset = argument7;
var yOffset = argument8;

// Used in the for cycle
var i = 0;
var j = 0;
var k = 0;
var l = 0;

// Buffers
var firstLineCharacters = [];
var secondLineCharacters = [];
var thirdLineCharacters = [];

// Used for the return
var charactersSpawned = [];

// WORKAROUND Used for the temporary characters
var temporaryCharacters = [];

// WORKAROUND Create temporary characters
temporaryCharacters = spawnCharacters(charactersToSpawn,
	xFirst, yFirst,
	xOffset, yOffset
);

for(i = 0; i < array_length_1d(charactersToSpawn); i++) {
// Check to which line the characters belongs to
	switch(charactersToSpawn[i].line) {
		case lines.firstLine:
			firstLineCharacters = addValueToArray(firstLineCharacters,
				charactersToSpawn[j]);
		break;
		
		case lines.secondLine:
			secondLineCharacters = addValueToArray(secondLineCharacters,
				charactersToSpawn[k]);
		break;
		
		case lines.thirdLine:
			thirdLineCharacters = addValueToArray(thirdLineCharacters,
				charactersToSpawn[l]);
		break;
	}
// Update the other iterators
	j++;
	k++;
	l++;
}

// WORKAROUND Destroy the temporary characters
for(i = 0; i < array_length_1d(temporaryCharacters); i++) {
	instance_destroy(temporaryCharacters[i]);
}

// All characters of the same line are created at once
charactersSpawned = addArrayToArray(charactersSpawned,
	spawnCharacters(firstLineCharacters, xFirst, yFirst, xOffset, yOffset)
);
charactersSpawned = addArrayToArray(charactersSpawned,
	spawnCharacters(secondLineCharacters, xSecond, ySecond, xOffset, yOffset)
);
charactersSpawned = addArrayToArray(charactersSpawned,
	spawnCharacters(thirdLineCharacters, xThird, yThird, xOffset, yOffset)
);

return charactersSpawned;