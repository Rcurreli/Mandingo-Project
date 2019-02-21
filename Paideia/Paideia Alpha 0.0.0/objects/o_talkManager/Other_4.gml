/// @description Create the actors

if(room == rm_friendEncounter) {
	childs = spawnCharacters(childGroup.members);
	spawnCharacters(friendGroup.members);
	friend = friendGroup.members[0];
}