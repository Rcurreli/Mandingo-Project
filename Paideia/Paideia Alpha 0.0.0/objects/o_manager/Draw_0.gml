/// @description Display info

switch(room) {
	case rm_start:
// Draw the log
		writeDownLog(x_offset, y_offset, (room_width - x_offset), room_height, log);
	break;
	
	case rm_overworld:
// Draw the log
		writeDownLog(x_offset, y_offset, (room_width - x_offset), room_height, log);
	break;
	
	case rm_end:
// Draw the log
		writeDownLog(x_offset, y_offset, (room_width - x_offset), room_height, log);
	break;
}