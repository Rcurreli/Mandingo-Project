/// @description Manage the battle

if((o_roomManager.roomClass == roomClasses.fieldBattle)
	and (array_length_1d(activeChilds) == 0)) {
// The battle hasn't ended yet
	if(isBattleEnded == false) {
// A new turn begins
		battleTurn++;
		
// Initialize this turn's log
		battleLog = "Turno " + string(battleTurn) + ": ";
	
// Activate childs
		activeChilds = activateCombatants(childs);
	
// TEMP The childs auto-attack
/*
		if(array_length_1d(activeChilds) > 0) {
			battleLog += allCombatantsAttack(activeChilds, enemies);
		}
*/

// Activate enemies
		activeEnemies = activateCombatants(enemies);

// The active enemies auto-attack
		if(array_length_1d(activeEnemies) > 0) {
			battleLog += allCombatantsAttack(activeEnemies, childs)
		}

// Write down something even if there was no active child and
// no active enemy
		if((array_length_1d(activeChilds) <= 0) and
			(array_length_1d(activeEnemies) <= 0)) {
			battleLog += "Nessun attacco";
		}
	}
// The battle has ended
	else {
		room_goto(overworld);
	}

// All players has died
	if(checkIfCombatantsDied(childs) == true) {
		isBattleEnded = true;
		childGroup.isAlive = false;
		battleLog += "\nI Figli hanno perso!";
	}
// All enemies have died
	else if(checkIfCombatantsDied(enemies) == true) {
		isBattleEnded = true;
		enemyGroup.isAlive = false;
		battleLog += "\nI Figli hanno vinto!";
	}
}