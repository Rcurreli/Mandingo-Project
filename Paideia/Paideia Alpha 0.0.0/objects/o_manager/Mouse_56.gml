/// @description Interact

switch(o_roomManager.roomClass) {

// Start the game
	case roomClasses.gameStart:
		if(!instance_exists(obj_textevent)) {
			room_goto(rm_corridorsAbstract);
		}
	break;

// End the game; TO DO manage game over
	case roomClasses.entranceField:
		if(isGameEnded == true) {
			room_goto(rm_end);
		}
	break;
}