/// @description Default battle values

// The room to go back to
overworld = o_manager.overworld;

// The actors of the battle
childGroup = o_childGroup;
enemyGroup = o_manager.encounter;
childs = spawnCharacters(childGroup.members);
enemies = spawnCharacters(enemyGroup.members);

// The active actors of the battle
activeChilds = [];
activeEnemies = [];

// Set battle values
isBattleEnded = false;
battleTurn = 0;
phase = 0;

// String returned from the pressed button
textButton = [];

// Has an attack happened? TO DO manage all player actions
attacco = false

// Create the first battle textbox
create_textevent(["I Figli si imbattono in un Soldato minoico!",
		"Click sinistro per combattere"], -1);