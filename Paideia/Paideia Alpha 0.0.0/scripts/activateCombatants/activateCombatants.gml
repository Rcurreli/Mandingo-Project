// Rename the arguments for readablity
var combatants = argument0;

// Iterators
var i = 0;
var j = 0;

// Used for the return
var activatedCombatants = noone;

for(i = 0; i < array_length_1d(combatants); i++) {
// A combatant is active if they're alive and if it's their turn
	if((combatants[i].is_alive == true) and
		(o_battleManager.battleTurn % combatants[i].attack_speed == 0)) {
		activatedCombatants[j] = combatants[i];
		j++;
	}
}
return activatedCombatants;