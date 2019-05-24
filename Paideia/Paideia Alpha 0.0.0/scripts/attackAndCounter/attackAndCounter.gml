// Rename the arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var logToReturn = [];

// The attacker attacks
logToReturn  = addArrayToArray(logToReturn, attackDefender(attacker, defender));

// The defender counters if they're still alive, they don't belong to the third
// line and they can reach the attacker
if((defender.isAlive == true) and (defender.line != lines.thirdLine) and
	(canReachTarget(defender, attacker))) {
		logToReturn  = addArrayToArray(logToReturn,
			counterAttacker(attacker, defender));
	}

return logToReturn;