/// @description Default battle values

// The room to go back to
overworld = o_manager.overworld;

// The actors of the battle
childGroup = o_childGroup;
enemyGroup = o_manager.encounter;
childs = spawnCharacters(childGroup.members, room_width / 4, room_height / 4,
	room_width / 4, room_height * 3 / 4);
enemies = spawnCharacters(enemyGroup.members, room_width * 3 / 4,
	room_height / 4, room_width * 3 / 4, room_height * 3 / 4);

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