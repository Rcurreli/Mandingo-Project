/// @description Insert description here
// You can write your code in this editor

/// @description Interact



// Start the game
if(room == rm_start){	
		if(!instance_exists(obj_textevent)) {
			room_goto(rm_corridorsAbstract);
		}
}

// End the game; TO DO manage game over
if(room == rm_corridorsAbstract){	
		if(isGameEnded == true) {
			room_goto(rm_end);
		}
}

if(gameExit == true && instance_exists(obj_textbox) == false){
	game_end();
}

