/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
// Decide the choice to make
switch(character) {
	case o_mother:
		choiceMade = "Card games";
	break;
	case o_father:
		choiceMade = "Watch TV";
	break;
	case o_child:
		choiceMade = "Videogames";
	break;
}

// Decide the target
target = character.playTarget;