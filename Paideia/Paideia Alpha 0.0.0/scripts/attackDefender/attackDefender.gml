// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var damage = manageDamage(attacker, defender);
var logToReturn = "";

// Write down the log
if(checkIfIsInArray(attacker, o_battleManager.players) == true) {
	logToReturn = " Il Figlio attacca: ";
}
else if(checkIfIsInArray(attacker, o_battleManager.enemies) == true) {
	logToReturn = " Il Minoico attacca: ";
}

logToReturn += string(damage) + " danni! ";

return logToReturn;