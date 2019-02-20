// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = manageDamage(defender, attacker);
var logToReturn = "";

// Write down the log
if(checkIfIsInArray(defender, o_battleManager.players) == true) {
	logToReturn = " Il Figlio contrattacca: ";
}
else if(checkIfIsInArray(defender, o_battleManager.enemies) == true) {
	logToReturn = " Il Minoico contrattacca: ";
}

logToReturn += string(damage) + " danni! ";

return logToReturn;