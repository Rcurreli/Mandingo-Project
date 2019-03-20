/// @description Create the actors

if(o_roomManager.roomClass == roomClasses.fieldBattle) {
	childs = spawnCharacters(childGroup.members);
	enemies = spawnCharacters(enemyGroup.members);
}