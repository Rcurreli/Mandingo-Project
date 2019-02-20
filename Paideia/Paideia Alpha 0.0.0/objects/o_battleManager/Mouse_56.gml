/// @description Manage the battle

// The battle hasn't ended yet
if(isBattleEnded == false) {
// A new turn begins
	battleTurn++;
	
// Initialize this turn's log
	battleLog = "Turno " + string(battleTurn) + ":";
	
// Activate players
	activePlayers = activateCombatants(players);
	
// Activate enemies
	activeEnemies = activateCombatants(enemies);
	
// TEMP The players auto-attack
	if(activePlayers != noone) {
		battleLog += allCombatantsAttack(activePlayers, enemies);
	}
	
// The enemies auto-attack
	if(activeEnemies != noone) {
		battleLog += allCombatantsAttack(activeEnemies, players)
	}

// Write down something even if none attacked
	if((activePlayers == noone) and (activeEnemies == noone)) {
		battleLog += " Nessun attacco";
	}
	
// Reset the active players and enemies
	activePlayers = noone;
	activeEnemies = noone;
}
// The battle has ended
else {
	room_goto(rm_overworld);
}

// All players has died
if(checkIfCombatantsDied(players) == true) {
	isBattleEnded = true;
	killAllCombatants(players);
	battleLog = "I Figli hanno perso!";
}
// All enemies have died
else if(checkIfCombatantsDied(enemies) == true) {
	isBattleEnded = true;
	killAllCombatants(enemies);
	battleLog = "I Figli hanno vinto";
}