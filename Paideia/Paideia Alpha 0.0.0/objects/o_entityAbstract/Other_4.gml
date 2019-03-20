/// @description Manage room change

// Manage the position
switch(o_roomManager.roomClass) {
	case roomClasses.entranceField:
		x = overworldX;
		y = overworldY;
	break;
	
	case roomClasses.settlement:
		x = friendEncounterX;
		y = friendEncounterY;
	break;
	
	case roomClasses.fieldBattle:
		x = enemyEncounterX;
		y = enemyEncounterY;
	break;
}

// Manage the visibility
if((o_roomManager.roomClass == roomClasses.gameStart) or
	(o_roomManager.roomClass == roomClasses.gameEnd)) {
	visible = false;
}
else {
	visible = true;
}