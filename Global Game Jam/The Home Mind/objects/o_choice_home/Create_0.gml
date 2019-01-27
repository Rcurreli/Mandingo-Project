/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
switch(character) {
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