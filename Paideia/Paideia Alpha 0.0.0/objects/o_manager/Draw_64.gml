/// @description Display info


switch(o_roomManager.roomClass) {
	case roomClasses.gameStart:
// Draw the log
		writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, log);
	break;

	case roomClasses.gameEnd:
// Draw the log
		writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, log);
	break;

	case roomClasses.entranceField:
// Draw the log
		writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, log);
	break;
}