// Rename the arguments for readability
var entity = argument0;

if(entity.currentHealth <= 0) {
	entity.isAlive = false;

	if(checkIfInArray(entity, o_battleManager.activeChilds)){
		o_battleManager.activeChilds = deleteFromArray(entity, o_battleManager.activeChilds);
	}
	if(checkIfInArray(entity, o_battleManager.activeEnemies)){
		o_battleManager.activeEnemies = deleteFromArray(entity, o_battleManager.activeEnemies);
	}	
}