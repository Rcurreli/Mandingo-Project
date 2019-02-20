// Rename the arguments for readability
var combatants = argument0;

// Iterator
var i = 0;

// If at least one combatant is alive, not all combatants are dead
for(i = 0; i < array_length_1d(combatants); i++) {
	if(combatants[i].current_health > 0) {
		return false;
	}
}
// If not, all combatants are dead
return true;