/// @description Create the actors

if(getRoomClass() == roomClasses.fieldBattle) {
	childs = spawnCharacters(childGroup.members);
	enemies = spawnCharacters(enemyGroup.members);
}