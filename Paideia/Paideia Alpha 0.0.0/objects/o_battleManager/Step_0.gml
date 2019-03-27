/// @description Insert description here
// You can write your code in this editor

if((o_roomManager.roomClass == roomClasses.fieldBattle) && !instance_exists(obj_textevent) && endTurn) {
	
// The battle hasn't ended yet
	if(isBattleEnded == false) {
		endTurn = false;
		
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
		if(phase == 0){
			// Activate childs
			activeChilds = activateCombatants(childs);
			// Activate enemies
			activeEnemies = activateCombatants(enemies);
		
			battlelog = [];
			textButton = [];
			
			
			// Initialize this turn's log
			battlelog = addValueToArray(battlelog, "Turno " + string(battleTurn) + ": ");
			
			create_textevent(battlelog, -1);
			battleTurn++;
			
		// The active enemies auto-attack
			if(array_length_1d(activeEnemies) > 0) {
				battlelog = addArrayToArray(battlelog,allCombatantsAttack(activeEnemies, childs));
				create_textevent(battlelog, -1);
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
				battlelog = addArrayToArray(battlelog,"Nessun attacco");
				create_textevent(battlelog, -1);
			}
			phase ++;
		}
		else if(phase == 1){
			
			if(attacco){
				create_textevent(textButton, -1);
				attacco = false;
			}
			else if(array_length_1d(activeChilds)== 0){
				instance_create_layer(700, 300, "Logic_and_GUI", o_buttonNextTurn);
			}
			
		}

			phase %= 2;
	
		endTurn = true;
	}
// The battle has ended
	else {
		room_goto(overworld);
	}
}