/// @description Insert description here
// You can write your code in this editor

// Has the turn ended yet?
endTurn = false;

battleLog = [];

// The log for the FC Dialogue System
// There is nothing here Riccardo. Did you mean the variable above?

if(//(room == rm_battleAbstract) and
	(instance_exists(obj_textevent) == false) and (isBattleEnded == false)) {



	// The battle hasn't ended yet

	// All childs have died (NOTE: also all enemies might have died)
	if(checkIfCombatantsDied(childs) == true) {
		isBattleEnded = true;
		childGroup.isAlive = false;
		//battleLog = attackText;
		randomEnd = irandom_range(0,3);
		switch(randomEnd){
			case 0:
				battleLog = addValueToArray(battleLog, "I Ladri hanno vinto!");
				break;
			case 1:
				battleLog = addValueToArray(battleLog, "I Ladri hanno vinto!");
				break;
			case 2:
				battleLog = addValueToArray(battleLog, "I Ladri hanno vinto!");
				break;
			case 3:
				battleLog = addValueToArray(battleLog, "Minosse ha vinto!");
				break;
		}
		create_textevent(battleLog, -1);
		endTurn = true;
		// Play the defeat music
		audio_stop_sound(o_musicManager.roomMusic);
		audio_play_sound(ost_Defeat, 1, false);
		return;
	}
	// All enemies have died
	else if(checkIfCombatantsDied(enemies) == true) {
		isBattleEnded = true;
		enemyGroup.isAlive = false;
		//battleLog = attackText;
		randomEnd = irandom_range(0,3);
		switch(randomEnd){
			case 0:
				battleLog = addValueToArray(battleLog, "I Figli hanno vinto!");
				break;
			case 1:
				battleLog = addValueToArray(battleLog, "I Figli hanno vinto!");
				break;
			case 2:
				battleLog = addValueToArray(battleLog, "I Figli hanno vinto!");
				break;
			case 3:
				battleLog = addValueToArray(battleLog, "La Grecia ha vinto!");
				break;
		}

		create_textevent(battleLog, -1);
		endTurn = true;
		// Play the victory music
		audio_stop_sound(o_musicManager.roomMusic);
		audio_play_sound(ost_Victory, 1, false);
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
			create_textevent(attackText, -1);
			attacco = false;
		}
		else if(array_length_1d(activeChilds)== 0){
			if(!instance_exists(obj_textevent)){
				phase++;
				phase %= 2;
			}
		}		
	}

}

// The battle has ended
else if(//(room == rm_battleAbstract) and
	(instance_exists(obj_textevent) == false) and (isBattleEnded == true)){
	room_goto(overworld);
}