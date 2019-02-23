/// @description Create the actors

if(room == rm_battleAbstract) {
	childs = spawnCharacters(childGroup.members);
	enemies = spawnCharacters(enemyGroup.members);
}