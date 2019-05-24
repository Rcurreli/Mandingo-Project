// Rename the arguments for readability
var attackers = argument0;
var defenders = argument1;

// Iterators
var i = 0;
var j = 0;

// Used to decide the best target
var attackPotential = 0;
var bestAttackPotential = 0;
var possibleTargets = [];
var reachableTargets = [];
var chosenTargets = [];

// Used for the return
var logToReturn = [];

for(i = 0; i < array_length_1d(defenders); i++) {
// Only choose from alive targets
	if(defenders[i].isAlive == true) {
		possibleTargets = addValueToArray(possibleTargets, defenders[i]);
	}
}

for(i = 0; i < array_length_1d(attackers); i++) {
// Choose a target
// Find all reachable targets
	for(j = 0; j < array_length_1d(possibleTargets); j++) {
		if(canReachTarget(attackers[i], possibleTargets[j]) == true) {
			reachableTargets = addValueToArray(reachableTargets,
				possibleTargets[j]);
		}
	}
	
// Find the chosen targets
// DON'T TOUCH THE OPTIMIZATION FORMULA
	for(j = 0; j < array_length_1d(reachableTargets); j++) {

// The value is initially set to the damage dealt
		attackPotential = dealDamage(attackers[i], reachableTargets[j]);

// The value is divided by the the damage dealt by the counter
		if(canReachTarget(reachableTargets[j], attackers[i]) == true) {
			attackPotential /= dealDamage(reachableTargets[j], attackers[i]);
		}

// This is to avoid that counters that deal 1 damage are weighted as no counters
		else {
			attackPotential *= 2;
		}

// Switch a new best value with another
		if(attackPotential >= bestAttackPotential) {
			bestAttackPotential = attackPotential;
			chosenTargets = addValueToArray(chosenTargets, reachableTargets[j]);
		}
	}
	
	/*
	var target = possibleTargets[irandom_range(0, (array_length_1d(possibleTargets) - 1))];
	
	show_debug_message(array_length_1d(possibleTargets) - 1);
	*/
//The attacker attacks, the defender counters; TO DO don't make this automatic
	logToReturn  = addArrayToArray(logToReturn, attackAndCounter(attackers[i],
		chosenTargets[irandom_range(0, (array_length_1d(chosenTargets) - 1))]));
	
// Resets the variables at the end of the cycle
	bestAttackPotential = 0;
	reachableTargets = [];
	chosenTargets = [];
}


// Return the battle log
return logToReturn;

