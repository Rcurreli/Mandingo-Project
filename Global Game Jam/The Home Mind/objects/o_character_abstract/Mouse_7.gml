/// @description Select this character

// GUI variables
	baseOffset = 45;

// Change the viewport
	activateViewport(o_manager.currentCharacter);

// Create the choices
	instance_create_layer((x - (3 * baseOffset)),
		(y - (3 * baseOffset / 2)), "Logic", o_choice_work);
	instance_create_layer((x + baseOffset),
		(y - (3 * baseOffset / 2)), "Logic", o_choice_play);
	instance_create_layer((x - (4 * baseOffset / 3)), (y - (3 * baseOffset)),
		"Logic", o_choice_home);
	instance_create_layer(x - (5 * baseOffset / 2), y,
		"Logic", o_choice_helpA);
	instance_create_layer(x + (baseOffset / 2), y,
		"Logic", o_choice_helpB);