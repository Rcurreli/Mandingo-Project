// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

show_debug_message(defender);

// Used for the return
var damage = dealDamage(defender, attacker);
var logToReturn = [];

// Write down the log
if(checkIfInArray(defender, o_battleManager.childs) == true) {
	logToReturn  = addValueToArray(logToReturn," Il Figlio contrattacca: ");
}
else //if(checkIfInArray(defender, o_battleManager.enemies) == true)
{
	logToReturn  = addValueToArray(logToReturn," Il Minoico contrattacca: ");
}

logToReturn[array_length_1d(logToReturn) - 1] += "\n" + string(damage) + " danni! ";



// Death info
if(attacker.isAlive == false) {
	if(checkIfInArray(attacker, o_battleManager.childs) == true) {
		logToReturn  = addValueToArray(logToReturn,"Il Figlio viene sconfitto!");
	}
	if(checkIfInArray(attacker, o_battleManager.enemies) == true) {
		logToReturn  = addValueToArray(logToReturn,"Il Minoico viene sconfitto!");
	}
}

return logToReturn;