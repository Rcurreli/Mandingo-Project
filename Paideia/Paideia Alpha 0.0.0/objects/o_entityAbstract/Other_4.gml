/// @description Manage room change

// Manage the position
switch(room) {
	case rm_overworld:
		x = overworldX;
		y = overworldY;
	break;
	
	case rm_enemyEncounter:
		x = enemyEncounterX;
		y = enemyEncounterY;
	break;
	
	case rm_friendEncounter:
		x = friendEncounterX;
		y = friendEncounterY;
	break;
}

// Manage the visibility
if((room == rm_start) or (room == rm_end)) {
	visible = false;
}
else {
	visible = true;
}