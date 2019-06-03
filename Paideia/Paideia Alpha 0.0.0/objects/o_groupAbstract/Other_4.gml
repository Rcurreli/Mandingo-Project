/// @description Manage room change

// Manage the position
/*	
	if(room == rm_dialogo){	
		x = friendEncounterX;
		y = friendEncounterY;
	}

	
	if(room == rm_battleAbstract){	
		x = enemyEncounterX;
		y = enemyEncounterY;
	}
*/


// Manage the visibility
if((room == rm_start) or
	(room == rm_end) or (room == rm_battleAbstract) or (room == rm_dialogo)) {
	visible = false;
}
else {
	visible = true;
}

//Se il gruppo e' morto non e' piu' visibile e le sue coordinate sono fuori dalla room
// Then you do write down comments...
if(isAlive == false){
	visible = false;
	x=-150;
	y=-150;
}



