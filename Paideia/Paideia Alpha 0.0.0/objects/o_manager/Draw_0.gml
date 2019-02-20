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

	case rm_friend_encounter:
// Draw the log
		writeDownLog(x_offset, y_offset, (room_width / 2 + x_offset), (3 * y_offset), log);

// Draw additional text
		if((talk_current - 1) == 0) {
			draw_text(x_offset, (y_offset + text_offset),
				"Salute: " + string(o_player.current_health) + " / "
				+ string(o_player.max_health)
			);
		}
	break;
	
	case rm_end:
// Draw the log
		writeDownLog(x_offset, y_offset, (room_width - x_offset), room_height, log);
	break;
}