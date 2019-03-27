// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = dealDamage(attacker, defender);
var logToReturn = [];

// Write down the log
// Attack info
logToReturn = addValueToArray(logToReturn, attacker.name + " attacca:\n" + string(damage) + " danni!");
/*
if(checkIfInArray(attacker, o_battleManager.childs) == true) {
	logToReturn  = addValueToArray(logToReturn,"Il Figlio attacca: ");
}
else if(checkIfInArray(attacker, o_battleManager.enemies) == true) {
	logToReturn  = addValueToArray(logToReturn,"Il Minoico attacca: ");
}
*/

logToReturn[array_length_1d(logToReturn) - 1] += "\n" + string(damage) + " danni! ";

// Death info
if(defender.isAlive == false) {
	if(checkIfInArray(defender, o_battleManager.childs) == true) {
		logToReturn  = addValueToArray(logToReturn,"Il Figlio viene sconfitto!");
	}
	if(checkIfInArray(defender, o_battleManager.enemies) == true) {
		logToReturn  = addValueToArray(logToReturn,"Il Minoico viene sconfitto!");
	}
}

return logToReturn;