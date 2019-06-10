// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

show_debug_message(defender);

// Used for the return
var damage = dealDamage(defender, attacker);
var logToReturn = [];

// Write down the log
// Attack info
logToReturn = addValueToArray(logToReturn, defender.name + " contrattacca\n" + attacker.name + "\n");


// Death info
if(attacker.isAlive == false) {
	logToReturn = addValueToArray(logToReturn, attacker.name +
		" viene sconfitto!");
}

return logToReturn;