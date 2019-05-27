/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(vspeed > 0){
	image_index = 0;
}

if(vspeed < 0){
	image_index = 2;
}

if(hspeed > 0){
	sprite_index = s_NeoptolemusWalkRight;
	image_xscale = 1;
}

if(hspeed < 0){
	sprite_index = s_NeoptolemusWalkRight;
	image_xscale = -1;
}
