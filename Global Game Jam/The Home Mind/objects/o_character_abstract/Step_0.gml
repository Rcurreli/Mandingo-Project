/// @description Move and rotate

// The character is standing still
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