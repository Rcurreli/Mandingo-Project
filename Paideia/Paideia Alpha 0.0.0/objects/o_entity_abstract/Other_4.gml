/// @description Manage room change

// Manage the position
switch(room) {
	case rm_overworld:
		x = overworld_x;
		y = overworld_y;
	break;
	
	case rm_enemy_encounter:
		x = enemy_encounter_x;
		y = enemy_encounter_y;
	break;
	
	case rm_friend_encounter:
		x = friend_encounter_x;
		y = friend_encounter_y;
	break;
}

// Manage the visibility
if((room == rm_start) or (room == rm_end)) {
	is_visible = false;
}

if(is_visible == true) {
	visible = true;
}
else {
	visible = false;
}