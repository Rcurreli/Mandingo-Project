// Rename the argument for readability
var childGroup = argument0;
var encounter = argument1;
var underworld = argument2;

// The room to go back to
var overworld = room;

// Save the player coordinates
childGroup.overworldX = x;
childGroup.overworldY = y;

switch(underworld) {
// The childs met the enemy
	case rm_battleAbstract:
		o_battleManager.childGroup = childGroup;
		o_battleManager.enemyGroup = encounter;
		o_battleManager.overworld = overworld;
	break;

// The childs met friends
	case rm_roomAbstract:
		o_talkManager.childGroup = childGroup;
		o_talkManager.friendGroup = encounter;
		o_talkManager.overworld = overworld;
	break;
}

// Meet them
room_goto(underworld);