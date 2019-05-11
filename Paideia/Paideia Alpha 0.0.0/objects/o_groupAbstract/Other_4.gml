/// @description Manage room change

// Manage the position
	
	if(room == rm_dialogo){	
		x = friendEncounterX;
		y = friendEncounterY;
	}

	
	if(room == rm_battleAbstract){	
		x = enemyEncounterX;
		y = enemyEncounterY;
	}



// Manage the visibility
if((room == rm_start) or
	(room == rm_end) or (room == rm_battleAbstract) or (room == rm_dialogo)) {
	visible = false;
}
else {
	visible = true;
}

if(isAlive == false){
	visible = false;
	x=0;
	y=0;
}



