// Rename the arguments for readability
var attackers = argument0;
var defenders = argument1;

// Iterator
var i = 0;

// Used for the return
var logToReturn = "";

for(i = 0; i < array_length_1d(attackers); i++) {
// Choose a target; TO DO different way to choose a target
	var target = defenders[irandom_range(0, (array_length_1d(defenders) - 1))];
	
//The attacker attacks, the defender counters; TO DO don't make this automatic
	logToReturn += attackAndCounter(attackers[i], target) + "\n";
}

// Return the battle log
return logToReturn;