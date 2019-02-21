/// @description Interact

switch(room) {

// Start the game
	case rm_start:
		room_goto(rm_overworld);
	break;

// End the game; TO DO manage game over
	case rm_overworld:
		if(isGameEnded == true) {
			room_goto(rm_end);
		}
	break;
}