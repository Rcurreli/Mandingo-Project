/// @description Initialize the choice

// Who makes the choice
switch(o_manager.currentCharacter) {
	case 1:
		o_manager.character = o_mother;
	break;
	case 2:
		o_manager.character = o_father;
	break;
	case 3:
		o_manager.character = o_child;
	break;
}


// The choice to make
choiceMade = "";

// The coords of the choice target
target = noone;