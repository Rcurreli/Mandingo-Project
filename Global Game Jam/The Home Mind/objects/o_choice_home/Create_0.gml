/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
switch(character) {
	case 1:
		choiceMade = "Cook the meal";
	break;
	case 2:
		choiceMade = "Clean the house";
	break;
	case 3:
		choiceMade = "Tidy up bedroom";
	break;
}