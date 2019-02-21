// Rename the argument for readability
var child = argument0;
var encounter = argument1;
var encounterDestination = argument2;

// Save the player coordinates
child.overworldX = x;
child.overworldY = y;

switch(encounterDestination) {
// The childs met the enemy
	case rm_enemyEncounter:
		o_battleManager.childs = [child];
		o_battleManager.enemies = [encounter];
	break;

// The childs met friends
	case rm_friendEncounter:
		o_talkManager.childs = [child];
		o_talkManager.friends = [encounter];
	break;
}

// Meet them
room_goto(encounterDestination);