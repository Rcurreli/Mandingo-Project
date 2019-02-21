/// @description Manage the battle

if(room = rm_enemyEncounter) {
// The battle hasn't ended yet
	if(isBattleEnded == false) {
// A new turn begins
		battleTurn++;
	
// Initialize this turn's log
		battleLog = "Turno " + string(battleTurn) + ": ";
	
// Activate players
		activeChilds = activateCombatants(childs);
	
// TEMP The players auto-attack
		if(activeChilds != noone) {
			battleLog += allCombatantsAttack(activeChilds, enemies);
		}

// Activate enemies
		activeEnemies = activateCombatants(enemies);

// The enemies auto-attack
		if(activeEnemies != noone) {
			battleLog += allCombatantsAttack(activeEnemies, childs)
		}

// Write down something even if none attacked
		if((activeChilds == noone) and (activeEnemies == noone)) {
			battleLog += "Nessun attacco";
		}
	}
// The battle has ended
	else {
		room_goto(rm_overworld);
	}

// All players has died
	if(checkIfCombatantsDied(childs) == true) {
		isBattleEnded = true;
		battleLog += "\nI Figli hanno perso!";
	}
// All enemies have died
	else if(checkIfCombatantsDied(enemies) == true) {
		isBattleEnded = true;
		battleLog += "\nI Figli hanno vinto!";
	}
}