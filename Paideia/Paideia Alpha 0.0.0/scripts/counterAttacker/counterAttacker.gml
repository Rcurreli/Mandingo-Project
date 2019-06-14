// Rename arguments for readability
var attacker = argument0;
var defender = argument1;


// Used for the return
var logToReturn = [];
var attackerText = "";
var defenderText = "";
var attackerPreHealth = attacker.currentHealth;

if(defender.currentHealth > (defender.maxHealth / 2)){
	defenderText = "con tutte la sue forze";
}

else if(defender.currentHealth < (defender.maxHealth / 4)){
	defenderText = "con le sue ultime forze";
}



var damage = dealDamage(defender, attacker);

if(attacker.currentHealth < (attackerPreHealth / 2)){
	attackerText = "gravi"
}

else if(attacker.currentHealth > (attackerPreHealth / 4)){
	attackerText = "lievi"
}

else attackerText = "abbastanza"

// Write down the log
// Attack info

logToReturn = addValueToArray(logToReturn, defender.name + " contrattacca "
+ defenderText +" "+ attacker.name + " causando "+ attackerText + " danni\n");

// Death info
if(attacker.isAlive == false) {
	logToReturn = addValueToArray(logToReturn, attacker.name +
		" viene sconfitto!");
}

return logToReturn;