/// @description Display info

switch(room) {
	case rm_start:
// Draw the log
		writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, log);
	break;
	
	case rm_overworld:
// Draw the log
		writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, log);
	break;
	
	case rm_end:
// Draw the log
		writeDownLog(xOffset, yOffset, (room_width - xOffset), room_height, log);
	break;
}