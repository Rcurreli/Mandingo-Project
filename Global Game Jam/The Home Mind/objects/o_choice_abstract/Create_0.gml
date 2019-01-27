/// @description Initialize the choice

// Who makes the choice
switch(o_manager.currentCharacter) {
	case 1:
		character = o_mother;
	break;
	case 2:
		character = o_father;
	break;
	case 3:
		character = o_child;
	break;
}

// The choice to make
choiceMade = "";