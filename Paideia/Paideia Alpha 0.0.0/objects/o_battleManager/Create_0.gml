/// @description Initialize the battle

// The actors of the battle
players = getAllCombatants(o_player);
enemies = getAllCombatants(o_enemy);

// The active actors of the battle
activePlayers = noone;
activeEnemies = noone;

// Set battle values
isBattleEnded = false;
battleTurn = 0;
battleLog = "Il Figlio di eroe si imbatte in un Minoico!"
	+ "\nClick sinistro per combattere";