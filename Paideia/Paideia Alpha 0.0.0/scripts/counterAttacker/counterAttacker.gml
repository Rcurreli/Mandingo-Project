// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = dealDamage(defender, attacker);
var logToReturn = "";

// Write down the log
if(checkIfInArray(defender, o_battleManager.childs) == true) {
	logToReturn = " Il Figlio contrattacca: ";
}
else if(checkIfInArray(defender, o_battleManager.enemies) == true) {
	logToReturn = " Il Minoico contrattacca: ";
}

logToReturn += string(damage) + " danni! ";

// Death info
if(attacker.isAlive == false) {
	if(checkIfInArray(attacker, o_battleManager.childs) == true) {
		logToReturn += "\nIl Figlio viene sconfitto!";
	}
	if(checkIfInArray(attacker, o_battleManager.enemies) == true) {
		logToReturn += "\nIl Minoico viene sconfitto!";
	}
}

return logToReturn;