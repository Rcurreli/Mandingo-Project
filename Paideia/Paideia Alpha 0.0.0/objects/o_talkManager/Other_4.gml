/// @description Create the actors

if(o_roomManager.roomClass == roomClasses.settlement) {
	childs = spawnCharacters(childGroup.members);
	spawnCharacters(friendGroup.members);
	friend = friendGroup.members[0];
}