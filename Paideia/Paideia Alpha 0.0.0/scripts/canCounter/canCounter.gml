// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// If the counter requirements ever change, change them there
return ((defender.isAlive == true) and (defender.line != lines.thirdLine) and
	(canReachTarget(defender, attacker)));