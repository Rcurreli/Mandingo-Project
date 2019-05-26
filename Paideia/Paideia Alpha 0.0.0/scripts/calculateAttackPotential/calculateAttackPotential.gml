// Rename arguments for readability
var attacker = argument0;
var defender = argument1;

// DON'T TOUCH THE OPTIMIZATION FORMULA
// The attack potential is initially set to the damage dealt
var attackPotential = calculateDamage(attacker.attack, defender.defense);

// The value is divided by the the damage dealt by the counter
if(canReachTarget(defender, attacker) == true) {
	attackPotential /= calculateDamage(defender.attack, attacker.defense);
}

// This is to avoid that counters that deal 1 damage are weighted as no counters
else {
	attackPotential *= 2;
}

return attackPotential;