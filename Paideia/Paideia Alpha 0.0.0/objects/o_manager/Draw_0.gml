/// @description Display info

switch(room) {
	case rm_start:
// Draw the log
		writeDownLog((room_width - x_offset), room_height);
	break;
	
	case rm_overworld:
// Draw the log
		writeDownLog((room_width - x_offset), room_height);
	break;

	case rm_enemy_encounter:
// Draw the log
		writeDownLog((room_width - x_offset), room_height);

// Draw the player info
		draw_text(x_offset, (y_offset + text_offset),
			"Info sul Figlio di eroe:"
			+ "\nSalute: " + string(o_player.current_health) + " / "
				+ string(o_player.max_health)
			+ "\nAttacco: " + string(o_player.attack)
			+ "\nDifesa: " + string(o_player.defense)
			+ "\nVelocita' d'attacco: " + string(o_player.attack_speed)
		);

// Draw the enemy info
		draw_text((room_width / 2), (y_offset + text_offset),
			"Info sul Minoico:"
			+ "\nSalute: " + string(current_enemy.current_health) + " / "
				+ string(current_enemy.max_health)
			+ "\nAttacco: " + string(current_enemy.attack)
			+ "\nDifesa: " + string(current_enemy.defense)
			+ "\nVelocita' d'attacco: " + string(current_enemy.attack_speed)
		);
	break;

	case rm_friend_encounter:
// Draw the log
		writeDownLog((room_width / 2 + x_offset), (3 * y_offset));

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
		writeDownLog((room_width - x_offset), room_height);
	break;
}