/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(vspeed > 0){
	image_index = 0;
}

if(vspeed < 0){
	image_index = 3;
}

if(hspeed > 0){
	image_index = 2;
}

if(hspeed < 0){
	image_index = 1;
}
