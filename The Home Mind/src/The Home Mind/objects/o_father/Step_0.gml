/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
/// @description Move and rotate

// The character is standing still
if(death != true){

	if((path_position == 1) or (path_position == 0)) {
		isIdle = true;
	}
	// The character is moving
	else {
		isIdle = false;
	}

	// The character is standing still
	if(isIdle = true) {
	    sprite_index = idleSprite;
	}
	// The character is moving
	else {
		switch(direction) {
			case 0:
				sprite_index = walkRightSprite;
			break;
			case 90:
				sprite_index = walkUpSprite;
			break;
			case 180:
				sprite_index = walkLeftSprite;
			break;
			case 270:
				sprite_index = walkDownSprite;
			break;
		}
	}



	if((path_position == 1) and (hasEnded == false)){
	
		o_manager.currentCharacter = 0;
		activateViewport(o_manager.currentCharacter);
		hasEnded = true;
		o_manager.thingToDo --;
	}
}



