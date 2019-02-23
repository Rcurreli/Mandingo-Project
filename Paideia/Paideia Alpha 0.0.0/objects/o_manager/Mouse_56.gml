/// @description Interact

switch(room) {

// Start the game
	case rm_start:
		room_goto(rm_corridorsAbstract);
	break;

// End the game; TO DO manage game over
	case rm_corridorsAbstract:
		if(isGameEnded == true) {
			room_goto(rm_end);
		}
	break;
}