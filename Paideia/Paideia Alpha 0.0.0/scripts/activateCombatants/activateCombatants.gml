// Rename the arguments for readablity
var combatants = argument0;

// Iterators
var i = 0;
var j = 0;

// Used for the return
var activatedCombatants = [];

for(i = 0; i < array_length_1d(combatants); i++) {
	if((combatants[i].is_alive == true) and
		(o_battleManager.battleTurn % combatants[i].attack_speed == 0)) {
		activatedCombatants[j] = combatants[i];
		j++;
	}
}
return activatedCombatants;