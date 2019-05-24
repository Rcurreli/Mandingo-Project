/// @description Default battle values

// Used to spawn the actors of the battle
var spawningX = room_width / 4;
var halfWidth = room_width / 2;
var spawningY = room_height / 2;
var xSpawningOffset = 0;
var ySpawningOffset = 192;

// The room to go back to
overworld = o_manager.overworld;

// The actors of the battle
childGroup = o_childGroup;
enemyGroup = o_manager.encounter;

/*
childs = spawnCharacters(childGroup.members,
	spawningXLeft, spawningY,
	xSpawningOffset, ySpawningOffset
);
enemies = spawnCharacters(enemyGroup.members,
	spawningXRight, spawningY,
	xSpawningOffset, ySpawningOffset
);
*/

// TO DO uncomment these after fixing the function

childs = spawnCharactersInLines(
	childGroup.members,
	spawningX * 3 / 2, spawningY,
	spawningX, spawningY,
	spawningX / 2, spawningY,
	xSpawningOffset, ySpawningOffset
);
enemies = spawnCharactersInLines(
	enemyGroup.members,
	spawningX / 2 + halfWidth, spawningY,
	spawningX + halfWidth, spawningY,
	spawningX * 3 / 2 + halfWidth, spawningY,
	xSpawningOffset, ySpawningOffset
);

// The active actors of the battle
activeChilds = [];
activeEnemies = [];

// The current target; this is a buffer
currentTarget = noone;

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