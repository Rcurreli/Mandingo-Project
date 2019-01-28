/// @description Deselect the current character

if(currentCharacter != 0) {
	if(character.hasChosen == noone){
	// Deselect the character
		currentCharacter = 0;
		activateViewport(currentCharacter);	
		instance_destroy(o_choice_abstract);
	}
}