/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
// Decide the choice to make
switch(o_manager.character) {
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
target = o_manager.character.workTarget;