// Get the room class
switch(room) {
// Game start rooms
	case rm_start:
		return roomClasses.gameStart;
	break;
	
// Game end rooms
	case rm_end:
		return roomClasses.gameEnd;
	break;

// Entrance field rooms
	case rm_corridorsAbstract:
		return roomClasses.entranceField;
	break;

// Settlement field rooms
	case rm_roomAbstract:
		return roomClasses.settlement;
	break;

// Field battle rooms
	case rm_battleAbstract:
		return roomClasses.fieldBattle;
	break;
}