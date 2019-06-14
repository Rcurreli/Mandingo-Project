/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event


if(o_manager.previousRoomType == roomTypes.theLameEcounter){
	x = overworldX;
	y = overworldY;
}
if(o_manager.previousRoomType == roomTypes.fieldBattle && isAlive == true){
	x = overworldX;
	y = overworldY;
}

else if(o_manager.previousRoomType == roomTypes.fieldBattle && isAlive == false){
	x = o_respawner.x;
	y = o_respawner.y;
	isAlive = true;
}

if((room == rm_start) or
	(room == rm_end) or (room == rm_battleAbstract) or (room == rm_dialogo)) {
	visible = false;
}
else {
	visible = true;
}