/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
// Decide the choice to make
switch(character) {
	case o_mother:
		choiceMade = "Office work";
	break;
	case o_father:
		choiceMade = "Extra work";
	break;
	case o_child:
		choiceMade = "Homeworks";
	break;
}

// Decide the target
target = character.workTarget;