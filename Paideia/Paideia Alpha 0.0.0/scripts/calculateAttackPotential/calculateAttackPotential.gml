// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// DON'T TOUCH THE OPTIMIZATION FORMULA
// The attack potential is initially set to the damage dealt
var attackPotential = calculateDamage(attacker.attack, defender.defense);

// The value is divided by the the damage dealt by the counter
if(canCounter(attacker, defender)) {
	attackPotential /= calculateDamage(defender.attack, attacker.defense);
}

// If the defender can't counter, the attack potential is instead multiplied
// by the damage not dealt (yet) by the counter
else {
	attackPotential *= calculateDamage(defender.attack, attacker.defense);
}

return attackPotential;