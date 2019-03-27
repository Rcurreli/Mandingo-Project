/// @description Create the actors

if(o_roomManager.roomClass == roomClasses.fieldBattle) {
	childs = spawnCharacters(childGroup.members);
	enemies = spawnCharacters(enemyGroup.members);
	battlelog = ["Il Figlio di eroe si imbatte in un Minoico!","Click sinistro per combattere"];
	create_textevent(battlelog, -1);
	

	
}