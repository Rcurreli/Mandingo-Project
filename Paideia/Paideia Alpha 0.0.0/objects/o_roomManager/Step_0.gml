/// @description Avoid going in the abstract room

if(room == rm_abstract) {
	global.roomcamefrom = room;
	room_goto(rm_start);
}