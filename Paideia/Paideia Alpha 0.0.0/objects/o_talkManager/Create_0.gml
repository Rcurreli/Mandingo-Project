/// @description Initialize the talking
var spawningX = room_width / 4;
var halfWidth = room_width / 2;
var spawningY = room_height / 2;
var xSpawningOffset = 0;
var ySpawningOffset = 192;
// The room to go back to
overworld = o_manager.overworld;

// The actors of the talk
childGroup = o_childGroup;
friendGroup = o_manager.encounter;
childs = spawnCharactersInLines(childGroup.members,
	spawningX * 3 / 2, spawningY,
	spawningX, spawningY,
	spawningX / 2, spawningY,
	xSpawningOffset, ySpawningOffset);
spawnCharactersInLines(friendGroup.members,
	spawningX / 2 + halfWidth, spawningY,
	spawningX + halfWidth, spawningY,
	spawningX * 3 / 2 + halfWidth, spawningY,
	xSpawningOffset, ySpawningOffset);


