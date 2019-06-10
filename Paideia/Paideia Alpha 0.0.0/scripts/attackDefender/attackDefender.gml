// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = dealDamage(attacker, defender);
var logToReturn = [];

// Write down the log
// Attack info
logToReturn = addValueToArray(logToReturn, attacker.name + " attacca\n" + defender.name +"\n");

// Death info
if(defender.isAlive == false) {
	logToReturn = addValueToArray(logToReturn, defender.name +
		" viene sconfitto!");
}

return logToReturn;