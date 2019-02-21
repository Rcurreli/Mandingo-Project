/// @description Create the actors

if(room == rm_enemyEncounter) {
	childs = spawnCharacters(childGroup.members);
	enemies = spawnCharacters(enemyGroup.members);
}