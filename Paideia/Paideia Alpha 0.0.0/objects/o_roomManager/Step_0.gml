/// @description Avoid going in the abstract room

if(outOfBound == true) {
	global.roomcamefrom = room;
	room_goto(rm_LabyrinthEntranceDoors);
}