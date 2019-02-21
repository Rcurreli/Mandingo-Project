// Rename the arguments for readablity
var combatants = argument0;

// Iterators
var i = 0;
var j = 0;

// Used for the return
var activatedCombatants = [];

for(i = 0; i < array_length_1d(combatants); i++) {
// A combatant is active if they're alive and if it's their turn
	if((combatants[i].isAlive == true) and
		(o_battleManager.battleTurn % combatants[i].attackSpeed == 0)) {
		activatedCombatants[j] = combatants[i];
		j++;
	}
}
show_debug_message(array_length_1d(activatedCombatants));
return activatedCombatants;