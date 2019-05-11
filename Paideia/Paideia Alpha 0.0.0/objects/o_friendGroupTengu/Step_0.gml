/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(room == rm_avventura && stato == 2 && (global.roomcamefrom == rm_avventura3 or global.roomcamefrom == rm_avventura2 or global.roomcamefrom == rm_corridorsAbstract or global.roomcamefrom == rm_battleAbstract or global.roomcamefrom == rm_dialogo)){
	y = o_childGroup.y;
}