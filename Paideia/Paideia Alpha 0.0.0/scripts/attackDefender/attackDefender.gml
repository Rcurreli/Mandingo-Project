// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// Used for the return
var logToReturn = [];

var attackText = "";
var defenderText = "";
var defenderPreHealth = defender.currentHealth;

if(defender.currentHealth <= 0) {
	logToReturn = addValueToArray(logToReturn, attacker.name + " colpisce " + defender.name + " per assicurarsi che rimanga a terra\n");
	return logToReturn;
}

if(attacker.currentHealth > (attacker.maxHealth / 2)){
	attackText = "con tutte la sue forze";
}

else if(attacker.currentHealth < (attacker.maxHealth / 4)){
	attackText = "con le sue ultime forze";
}



var damage = dealDamage(attacker, defender);

if(defender.currentHealth < (defenderPreHealth / 2)){
	defenderText = "gravi"
}

else if(defender.currentHealth > (defenderPreHealth / 4)){
	defenderText = "lievi"
}

else defenderText = "abbastanza"

// Write down the log
// Attack info

logToReturn = addValueToArray(logToReturn, attacker.name + " attacca "
+ attackText + " " + defender.name + " causando "+ defenderText + " danni\n");

// Death info
if(defender.isAlive == false) {
	
	logToReturn = addValueToArray(logToReturn, defender.name + defender.deathSentence);
}

return logToReturn;