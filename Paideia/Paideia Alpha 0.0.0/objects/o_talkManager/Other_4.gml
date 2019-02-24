/// @description Create the actors

if(getRoomClass() == roomClasses.settlement) {
	childs = spawnCharacters(childGroup.members);
	spawnCharacters(friendGroup.members);
	friend = friendGroup.members[0];
}