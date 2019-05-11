/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


if(global.roomcamefrom == rm_dialogo){
	x = overworldX;
	y = overworldY;
}
if(global.roomcamefrom == rm_battleAbstract){
	x = overworldX;
	y = overworldY;
}

if((room == rm_start) or
	(room == rm_end) or (room == rm_battleAbstract) or (room == rm_dialogo)) {
	visible = false;
}
else {
	visible = true;
}