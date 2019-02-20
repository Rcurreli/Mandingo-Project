// Rename the arguments for readability
var combatantType = argument0;

// Iterator
var i = 0;

// Used for the return
var allTheCombatants = [];

for(i = 0; i < instance_number(combatantType); i++) {
	allTheCombatants[i] = instance_find(combatantType, i);
}

return allTheCombatants;