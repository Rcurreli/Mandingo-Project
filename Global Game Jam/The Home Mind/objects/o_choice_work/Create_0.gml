/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
switch(character) {
	case 1:
		choiceMade = "Office work";
	break;
	case 2:
		choiceMade = "Extra work";
	break;
	case 3:
		choiceMade = "Homeworks";
	break;
}