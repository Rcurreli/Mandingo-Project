/// @description Default battle values

// The room to go back to
overworld = noone;

// The actors of the battle
childGroup = noone;
enemyGroup = noone;
childs = [];
enemies = [];

// The active actors of the battle
activeChilds = [];
currentChild = noone;
activeEnemies = [];

// Set battle values
isBattleEnded = false;
battleTurn = 0;
battleLog = "Il Figlio di eroe si imbatte in un Minoico!"
	+ "\nClick sinistro per combattere";