/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(room != rm_avventura3){
	visible = false;
	x = 0;
	y = 0;
}

if(room == rm_avventura3 && stato == 0 && (global.roomcamefrom == rm_avventura or global.roomcamefrom == rm_battleAbstract or global.roomcamefrom == rm_dialogo)){	
		x = startPositionX;
		y = startPositionY;
		visible = true;
}

if(room == rm_avventura3 && stato == 1 && (global.roomcamefrom == rm_avventura or global.roomcamefrom == rm_battleAbstract or global.roomcamefrom == rm_dialogo)){
	x = startPositionX + 150;
	y = startPositionY;
	visible = true;
}

if(room == rm_avventura && stato == 2 && (global.roomcamefrom == rm_avventura3 or global.roomcamefrom == rm_avventura2 or global.roomcamefrom == rm_corridorsAbstract or global.roomcamefrom == rm_battleAbstract or global.roomcamefrom == rm_dialogo)){
	x = o_teleportFriend.x;
	y = o_teleportFriend.y;
	visible = true;
}