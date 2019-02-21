// Rename the arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var logToReturn = "";

// The attacker attacks
logToReturn += attackDefender(attacker, defender);

// The defender counters if they're still alive
if(defender.isAlive == true) {
	logToReturn += counterAttacker(attacker, defender);
}

return logToReturn;