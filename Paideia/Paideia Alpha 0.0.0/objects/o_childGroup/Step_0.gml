/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//event_inherited();


// Vertical speed is not 0 (horizontal speed could be anything)
if(vspeed != 0) {
// Vertical speed is positive
	if(vspeed > 0) {
		sprite_index = s_NeoptolemusWalkFront;
	}

// Vertical speed is negative
	else {
		sprite_index = s_NeoptolemusWalkBack;
	}
}

// Vertical speed is 0, horizontal speed is not 0
else if(hspeed != 0) {
// Horizontal speed is positive
	if(hspeed > 0) {
		sprite_index = s_NeoptolemusWalkRight;
	}

// Horizontal speed is negative
	else {
		sprite_index = s_NeoptolemusWalkLeft;
	}
}

// Both vertical and horizontal speed are 0
else {
	switch(sprite_index) {
// Already in idle
		case s_NeoptolemusIdleFront:
		case s_NeoptolemusIdleBack:
		case s_NeoptolemusIdleRight:
		case s_NeoptolemusIdleLeft:
		break;

// Not in idle yet
		case s_NeoptolemusWalkFront:
			sprite_index = s_NeoptolemusIdleFront;
		break;

		case s_NeoptolemusWalkBack:
			sprite_index = s_NeoptolemusIdleBack;
		break;

		case s_NeoptolemusWalkRight:
			sprite_index = s_NeoptolemusIdleRight;
		break;

		case s_NeoptolemusWalkLeft:
			sprite_index = s_NeoptolemusIdleLeft;
		break;
	}
}
