/// @description Initialize this choice

// Call the parent
event_inherited();

// Specific actions
switch(character) {
	case 1:
		choiceMade = "Card games";
	break;
	case 2:
		choiceMade = "Watch TV";
	break;
	case 3:
		choiceMade = "Videogames";
	break;
}