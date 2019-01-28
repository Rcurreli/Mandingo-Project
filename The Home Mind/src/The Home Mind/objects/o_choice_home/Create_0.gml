/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
// Decide the choice to make
switch(o_manager.character) {
	case o_mother:
		choiceMade = "Cook the meal";
	break;
	case o_father:
		choiceMade = "Clean the house";
	break;
	case o_child:
		choiceMade = "Tidy up bedroom";
	break;
}

// Decide the target
target = o_manager.character.homeTarget;