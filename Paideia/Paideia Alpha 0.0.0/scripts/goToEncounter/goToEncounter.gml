// Rename the argument for readability
var childGroup = argument0;
var encounter = argument1;
var encounterDestination = argument2;

// Save the player coordinates
childGroup.overworldX = x;
childGroup.overworldY = y;

switch(encounterDestination) {
// The childs met the enemy
	case rm_enemyEncounter:
		o_battleManager.childGroup = childGroup;
		o_battleManager.enemyGroup = encounter;
	break;

// The childs met friends
	case rm_friendEncounter:
		o_talkManager.childGroup = childGroup;
		o_talkManager.friendGroup = encounter;
	break;
}

// Meet them
room_goto(encounterDestination);