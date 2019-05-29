/// @description Enter the room

// If the player came from that room, the player enters from here
if(o_manager.previousRoom == roomCameFrom) {
	o_childGroup.x = x;
	o_childGroup.y = y;
}