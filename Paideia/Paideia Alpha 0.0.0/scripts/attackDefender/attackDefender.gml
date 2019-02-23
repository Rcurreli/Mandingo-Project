// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = dealDamage(attacker, defender);
var logToReturn = "";

// Write down the log
// Attack info
if(checkIfInArray(attacker, o_battleManager.childs) == true) {
	logToReturn = "Il Figlio attacca: ";
}
else if(checkIfInArray(attacker, o_battleManager.enemies) == true) {
	logToReturn = "Il Minoico attacca: ";
}

logToReturn += string(damage) + " danni! ";

// Death info
if(defender.isAlive == false) {
	if(checkIfInArray(defender, o_battleManager.childs) == true) {
		logToReturn += "\nIl Figlio viene sconfitto!";
	}
	if(checkIfInArray(defender, o_battleManager.enemies) == true) {
		logToReturn += "\nIl Minoico viene sconfitto!";
	}
}

return logToReturn;