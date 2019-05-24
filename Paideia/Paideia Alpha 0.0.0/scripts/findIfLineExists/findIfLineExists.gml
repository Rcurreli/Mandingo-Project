// Rename arguments for readability
var member = argument0;
var line = argument1;

// Used for the controls
var faction = [];

// Used in the for cycle
var i = 0;

// Initialize the variable used to check
switch(member.whoIam) {
	case characterTypes.child:
		faction = o_battleManager.childs;
	break;
	
	case characterTypes.enemy:
		faction = o_battleManager.enemies;
	break;
}

// If at least one member of the faction is in the line, then return true
for(i = 0; i < array_length_1d(faction); i++) {
	if((faction[i].line == line) and (faction[i].isAlive == true)) {
		return true;
	}
}

// If this is not the case, return false
return false;