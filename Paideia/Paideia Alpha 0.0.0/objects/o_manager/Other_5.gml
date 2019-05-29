/// @description Remember this room

// Remember only rooms in the overworld
if(isInTheOverworld() == true) {
	previousRoom = room;
}

// Always remember the room type
previousRoomType = o_roomManager.roomType;