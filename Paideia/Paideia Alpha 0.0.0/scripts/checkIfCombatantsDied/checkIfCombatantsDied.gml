// Rename the arguments for readability
var combatants = argument0;

// Iterator
var i = 0;

for(i = 0; i < array_length_1d(combatants); i++) {
// If at least one combatant is alive, not all combatants are dead
	if(combatants[i].isAlive == true) {
		return false;
	}
}
// If not, all combatants are dead
return true;