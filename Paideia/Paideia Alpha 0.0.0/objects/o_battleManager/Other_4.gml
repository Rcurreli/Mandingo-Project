/// @description Create the actors

if(o_roomManager.roomClass == roomClasses.fieldBattle) {
	childs = spawnCharacters(childGroup.members);
	enemies = spawnCharacters(enemyGroup.members);
	create_textevent(["Il Figlio di eroe si imbatte in un Minoico!",
		"Click sinistro per combattere"], -1);
}