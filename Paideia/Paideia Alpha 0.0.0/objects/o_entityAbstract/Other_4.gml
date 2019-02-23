/// @description Manage room change

// Manage the position
switch(room) {
	case rm_corridorsAbstract:
		x = overworldX;
		y = overworldY;
	break;
	
	case rm_battleAbstract:
		x = enemyEncounterX;
		y = enemyEncounterY;
	break;
	
	case rm_roomAbstract:
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