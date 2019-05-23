/// @description Default battle values

// Used to spawn the actors of the battle
var spawningXLeft = room_width / 4;
var spawningXRight = room_width * 3 / 4;
var spawningY = room_height / 2;
var xSpawningOffset = 0;
var ySpawningOffset = 192;

// The room to go back to
overworld = o_manager.overworld;

// The actors of the battle
childGroup = o_childGroup;
enemyGroup = o_manager.encounter;

childs = spawnCharacters(childGroup.members,
	spawningXLeft, spawningY,
	xSpawningOffset, ySpawningOffset
);
enemies = spawnCharacters(enemyGroup.members,
	spawningXRight, spawningY,
	xSpawningOffset, ySpawningOffset
);

// TO DO uncomment these after fixing the function
/**
childs = spawnCharactersInLines(
	childGroup.members,
	spawningXLeft, spawningY,
	spawningXLeft * 3 / 4, spawningY,
	spawningXLeft / 2, spawningY,
	xSpawningOffset, ySpawningOffset
);
enemies = spawnCharactersInLines(
	enemyGroup.members,
	spawningXRight, spawningY,
	spawningXRight * 3 / 2, spawningY,
	spawningXRight * 2, spawningY,
	xSpawningOffset, ySpawningOffset
);
**/

// The active actors of the battle
activeChilds = [];
activeEnemies = [];

// Set battle values
isBattleEnded = false;
battleTurn = 1;
phase = 0;

// String returned from the pressed button
battleLog = [];

// Has an attack happened? TO DO manage all player actions
attacco = false

// Create the first battle textbox
create_textevent(["I Figli si imbattono in un Soldato minoico!",
		"Click sinistro per combattere"], -1);