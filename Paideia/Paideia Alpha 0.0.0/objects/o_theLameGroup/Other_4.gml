/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(room != rm_corridorsAbstract){
	visible = false;
	x = 0;
	y = 0;
}

if(room == rm_corridorsAbstract && (global.roomcamefrom == rm_avventura or global.roomcamefrom == rm_battleAbstract)){	
		x = startPositionX;
		y = startPositionY;
		visible = true;
}

