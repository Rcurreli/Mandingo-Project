/// @description Manage room change

// Manage the position
switch(getRoomClass()) {
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
if((getRoomClass() == roomClasses.gameStart) or
	(getRoomClass() == roomClasses.gameEnd)) {
	visible = false;
}
else {
	visible = true;
}