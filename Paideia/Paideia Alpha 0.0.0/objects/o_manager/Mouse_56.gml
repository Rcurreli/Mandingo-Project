/// @description Interact

switch(room) {

// Start
	case rm_start:
		room_goto(rm_overworld);
	break;

// End
	case rm_overworld:
		if((current_enemy != noone) and (current_friend != noone)) {
			if((current_enemy.is_alive == false) and (current_friend.is_alive == false)) {
				room_goto(rm_end);
			}
		}
	break;
}