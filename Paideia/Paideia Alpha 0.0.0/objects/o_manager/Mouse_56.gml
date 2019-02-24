/// @description Interact

switch(getRoomClass()) {

// Start the game
	case roomClasses.gameStart:
		room_goto(rm_corridorsAbstract);
	break;

// End the game; TO DO manage game over
	case roomClasses.entranceField:
		if(isGameEnded == true) {
			room_goto(rm_end);
		}
	break;
}