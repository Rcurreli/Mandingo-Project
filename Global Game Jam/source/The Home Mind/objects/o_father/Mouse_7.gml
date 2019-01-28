/// @description Select the father
if(death != true){
	if((o_manager.currentCharacter == 0) and (hasEnded == false)) {
	// Specific actions
	// Change the current character
		o_manager.currentCharacter = 2;
	
		activateViewport(o_manager.currentCharacter);

	// Call the parent
		/// @description Select this character


		// GUI variables
		baseOffset = 45;

		// Create the choices
		instance_create_layer((x - (3 * baseOffset)),
			(y - (3 * baseOffset / 2)), "Logic", o_choice_work);
		instance_create_layer((x + baseOffset),
			(y - (3 * baseOffset / 2)), "Logic", o_choice_play);
		instance_create_layer((x - (4 * baseOffset / 3)), (y - (3 * baseOffset)),
			"Logic", o_choice_home);

	}
}