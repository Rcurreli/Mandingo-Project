/// @description Insert description here
// You can write your code in this editor

// Has the turn ended yet?
var endTurn = true;

// The log for the FC Dialogue System
var battleLog = [];

if((o_roomManager.roomClass == roomClasses.fieldBattle) and
	(instance_exists(obj_textevent) == false) and (endTurn == true)) {
	
// The battle hasn't ended yet
	if(isBattleEnded == false) {
		endTurn = false;

// All childs have died (NOTE: also all enemies might have died)
		if(checkIfCombatantsDied(childs) == true) {
			isBattleEnded = true;
			childGroup.isAlive = false;
			create_textevent(["I Figli hanno perso!"], -1);
			endTurn = true;
			return;
		}
// All enemies have died
		else if(checkIfCombatantsDied(enemies) == true) {
			isBattleEnded = true;
			enemyGroup.isAlive = false;
			create_textevent(["I Figli hanno vinto!"], -1);
			endTurn = true;
			return;
		}
		
// A new turn begins
// Phase 0: activate all actors; TO DO enemies acts after the childs
		if(phase == 0){
			// Activate childs
			activeChilds = activateCombatants(childs);
			
			// Activate enemies
			activeEnemies = activateCombatants(enemies);
			
			// Reset the logs
			//battleLog = [];
			textButton = [];
			
			
			// Initialize this turn's log
			battleLog = addValueToArray(battleLog, "Turno " + string(battleTurn) + ": ");
			
			create_textevent(battleLog, -1);
			battleTurn++;
			
		// The active enemies auto-attack
			if(array_length_1d(activeEnemies) > 0) {
				battleLog = addArrayToArray(battleLog,
					allCombatantsAttack(activeEnemies, childs));
				create_textevent(battleLog, -1);
			}
			// TEMP The childs auto-attack
			/*
			if(array_length_1d(activeChilds) > 0) {
				battleLog += allCombatantsAttack(activeChilds, enemies);
			}
			*/
			
			// Write down something even if there was no active child and
			// no active enemy
			if((array_length_1d(activeChilds) <= 0) and
				(array_length_1d(activeEnemies) <= 0)) {
				battleLog = addValueToArray(battleLog, "Nessuno agisce");
				create_textevent(battleLog, -1);
			}
			phase++;
		}
// Phase 1: the childs acts
		else if(phase == 1){
			
			if(attacco == true){
				create_textevent(textButton, -1);
				attacco = false;
			}
			else if(array_length_1d(activeChilds)== 0){
				instance_create_layer(700, 300, "Logic_and_GUI",
					o_buttonNextTurn);
			}		
		}
// The phase is either 0 or 1
			phase %= 2;

// The turn has ended
		endTurn = true;
	}

// The battle has ended
	else {
		room_goto(overworld);
	}
}