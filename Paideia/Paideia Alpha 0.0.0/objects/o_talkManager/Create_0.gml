/// @description Initialize the talking

// The room to go back to
overworld = o_manager.overworld;

// The actors of the talk
childGroup = o_childGroup;
friendGroup = o_manager.encounter;
childs = spawnCharacters(childGroup.members, room_width / 4, room_height / 4,
	0, 192);
spawnCharacters(friendGroup.members, room_width * 3 / 4, room_height / 4,
	0, 192);


